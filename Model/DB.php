<?php

namespace Model;

class DB
{

    public static $TableName;
    public static $Debug;
    private static $Connect;

    public function __construct($table = null)
    {
        if ($table) {
            self::$TableName = $table;
        }
        $ad = new \Model_Adapter();
        if (self::$Connect == null)
            self::$Connect = \Model_Adapter::$_conn;
    }

    public function Like($col = [], $keyword = "")
    {
        $sql = [];
        foreach ($col as $colName) {
            $sql[] = " `{$colName}` LIKE '%{$keyword}%' ";
        }
        $sql = implode(" or ", $sql);
        return " ($sql) ";
    }

    static public function runsqlFile($fileName)
    {
        global $INI;
        $mysql_host = $INI['host'];
        $mysql_database = $INI['DBname'];
        $mysql_user = $INI['username'];
        $mysql_password = $INI['password'];
        $db = new \PDO("mysql:host=$mysql_host;dbname=$mysql_database", $mysql_user, $mysql_password, array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        $query = file_get_contents($fileName);
        $query = str_replace("bakcodt_", table_prefix, $query);
        $stmt = $db->prepare($query);
        if ($stmt->execute()) {
            echo "Success";
        } else {
            echo "Fail";
        }
    }

    protected function GetRows($sql)
    {
        if (self::$Debug)
            echo $sql;

        $res = self::$Connect->query($sql);
        $a = [];
        if ($res) {
            while ($row = $res->fetch_assoc()) {
                $a[] = $row;
            }
        }
        return $a;
    }

    protected function GetRow($sql)
    {
        if (self::$Debug)
            echo $sql;
        $res = self::$Connect->query($sql);
        $a = [];
        if ($res)
            return $res->fetch_assoc();
        return null;
    }

    // đém so dòng
    protected function SelectCount($where)
    {
        $TableName = self::$TableName;
        $sql = "SELECT COUNT(*) as `Total` FROM `{$TableName}` WHERE {$where}";
        $res = $this->GetRow($sql);
        if ($res) {
            return $res["Total"];
        }
        return 0;
    }

    // Phan Trang
    protected function SelectPT($where, $indexPage, $pageNumber, &$total)
    {
        $indexPage = ($indexPage - 1) * $pageNumber;
        $indexPage = max($indexPage, 0);
        $total = $this->SelectCount($where);
        $where = "{$where} limit {$indexPage},{$pageNumber}";
        return $this->Select($where);
    }

    // lấy 1 dòng
    public function SelectRow($where, $col = [])
    {
        $TableName = self::$TableName;
        $sql = "SELECT * FROM `{$TableName}` WHERE {$where}";
        if ($col) {
            $strCol = implode("`,`", $col);
            $sql = "SELECT `{$strCol}` FROM `{$TableName}` WHERE {$where}";
        }
        return $this->GetRow($sql);
    }

    // lấy 1 dòng
    public function SelectById($id, $col = [])
    {
        $where = "`Id` = '{$id}' ";
        return $this->SelectRow($where, $col);
    }

    public function GetToSelect($where, $col)
    {
        $TableName = self::$TableName;
        $sql = "SELECT * FROM `{$TableName}` WHERE {$where}";
        if ($col) {
            $strCol = implode("`,`", $col);
            $sql = "SELECT `{$strCol}` FROM `{$TableName}` WHERE {$where}";
        }
        return $this->GetRowsToSelect($sql, $col);
    }

    // lấy nhiều dòng
    public function Select($where, $col = [])
    {
        $TableName = self::$TableName;
        $sql = "SELECT * FROM `{$TableName}` WHERE {$where}";
        if ($col) {
            $strCol = implode("`,`", $col);
            $sql = "SELECT `{$strCol}` FROM `{$TableName}` WHERE {$where}";
        }
        return $this->GetRows($sql);
    }

    // sửa
    public function Update($model, $where = null)
    {
        if ($where == null) {
            $where = "`Id` = '{$model["Id"]}'";
        }
        $TableName = self::$TableName;
        $strsql = "";
        foreach ($model as $col => $val) {
            if ($val === null)
                $strsql .= "`{$col}`= null,";
            else
                $strsql .= "`{$col}`= '{$val}',";
        }
        $strsql = substr($strsql, 0, -1);
        $sql = "UPDATE `{$TableName}` SET {$strsql} WHERE {$where}";
        $res = self::$Connect->query($sql);
        if (!$res) {
            if (self::$Debug == TRUE)
                echo $sql;
            throw new \Exception(self::$Connect->error);
        }
        return self::$Connect;
    }

    // xóa data base
    public function SelectToOptions($where, $columns)
    {
        $a = (array) $this->Select($where, $columns);
        $d = [];
        foreach ($a as $value) {
            if (isset($columns[2])) {
                $d[$value[$columns[0]]] = $value[$columns[1]] . " _ " . $value[$columns[2]];
            } else {
                $d[$value[$columns[0]]] = $value[$columns[1]];
            }
        }
        return $d;
    }
    public function UpdateDB($where)
    {
        $TableName = self::$TableName;
        $sql = "DELETE FROM `{$TableName}` WHERE {$where}";
        self::$Connect->query($sql);
        return self::$Connect;
    }

    protected function DeleteDB($where)
    {
        $TableName = self::$TableName;
        $sql = "DELETE FROM `{$TableName}` WHERE {$where}";
        self::$Connect->query($sql);
        return self::$Connect;
    }

    protected function DeleteRowById($id)
    {
        $where = "`Id` = '{$id}'";
        return $this->DeleteDB($where);
    }

    //  Them6
    public function Insert($model)
    {
        $col = array_keys($model);
        $val = array_values($model);
        $colstr = implode("`,`", $col);
        $valstr = implode("','", $val);
        $TableName = self::$TableName;

        $sql = "INSERT INTO `{$TableName}`(`{$colstr}`) VALUES ('{$valstr}')";
        if (self::$Debug == TRUE) {
            echo $sql;
        }
        $res = self::$Connect->query($sql);
        if (!$res) {
            throw new \Exception(self::$Connect->error);
        }
        return self::$Connect;
    }

    public function GetRowsToSelect($sql, $col)
    {
        if (self::$Debug) {
            var_dump($col);
            echo $sql;
        }
        $res = self::$Connect->query($sql);
        $a = [];
        if ($res) {
            while ($row = $res->fetch_assoc()) {
                $a[$row[$col[0]]] = $row[$col[1]];
            }
        }
        return $a;
    }
}
