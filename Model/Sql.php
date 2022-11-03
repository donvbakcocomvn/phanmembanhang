<?php

namespace Model;

class Sql
{

    static public function WhereEq($columname, $value)
    {
        return " `{$columname}` = '{$value}' ";
    }
    static public function WhereLess($columname, $value)
    {
        return " `{$columname}` < '{$value}'";
    }
    static public function WhereBigger($columname, $value)
    {
        return " `{$columname}` > '{$value}'";
    }
    static public function WhereLike($columname, $value, $f = "%", $l = "%")
    {
        return " `{$columname}` like '{$f}{$value}{$l}'";
    }
    static public function WhereOr($where)
    {
        return " or {$where} ";
    }
    static public function WhereInArray($columname, $listValue)
    {
        $strIn = implode("','", $listValue);
        $whereIn = "`{$strIn}'";
        return " `{$columname}` in ({$whereIn})";
    }
    static public function WhereAnd($where)
    {
        return " and {$where} ";
    }
}
