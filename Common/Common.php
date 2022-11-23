<?php

namespace Common;

class Common
{

    function __construct()
    {
    }

    public static function uuid()
    {
        return sprintf(
            '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
            // 32 bits for "time_low"
            mt_rand(0, 0xffff),
            mt_rand(0, 0xffff),
            // 16 bits for "time_mid"
            mt_rand(0, 0xffff),
            // 16 bits for "time_hi_and_version",
            // four most significant bits holds version number 4
            mt_rand(0, 0x0fff) | 0x4000,
            // 16 bits, 8 bits for "clk_seq_hi_res",
            // 8 bits for "clk_seq_low",
            // two most significant bits holds zero and one for variant DCE1.1
            mt_rand(0, 0x3fff) | 0x8000,
            // 48 bits for "node"
            mt_rand(0, 0xffff),
            mt_rand(0, 0xffff),
            mt_rand(0, 0xffff)
        );
    }

    public static function Number2words($number)
    {
        header('Content-Type: text/html; charset=utf-8');
        $c = new Common();
        // $c->Number_to_words($number);
        return $c->convert_number_to_words($number);
    }

    function convert_number_to_words($number)
    {
        $hyphen      = ' ';
        $conjunction = '  ';
        $separator   = ' ';
        $negative    = 'âm ';
        $decimal     = ' phẩy ';
        $dictionary  = array(
            0                   => 'không',
            1                   => 'một',
            2                   => 'hai',
            3                   => 'ba',
            4                   => 'bốn',
            5                   => 'năm',
            6                   => 'sáu',
            7                   => 'bảy',
            8                   => 'tám',
            9                   => 'chín',
            10                  => 'mười',
            11                  => 'mười một',
            12                  => 'mười hai',
            13                  => 'mười ba',
            14                  => 'mười bốn',
            15                  => 'mười năm',
            16                  => 'mười sáu',
            17                  => 'mười bảy',
            18                  => 'mười tám',
            19                  => 'mười chín',
            20                  => 'hai mươi',
            30                  => 'ba mươi',
            40                  => 'bốn mươi',
            50                  => 'năm mươi',
            60                  => 'sáu mươi',
            70                  => 'bảy mươi',
            80                  => 'tám mươi',
            90                  => 'chín mươi',
            100                 => 'trăm',
            1000                => 'nghìn',
            1000000             => 'triệu',
            1000000000          => 'tỷ',
            1000000000000       => 'nghìn tỷ',
            1000000000000000    => 'nghìn triệu triệu',
            1000000000000000000 => 'tỷ tỷ'
        );
        if (!is_numeric($number)) {
            return false;
        }
        if (($number >= 0 && (int) $number < 0) || (int) $number < 0 - PHP_INT_MAX) {
            // overflow
            trigger_error(
                'convert_number_to_words only accepts numbers between -' . PHP_INT_MAX . ' and ' . PHP_INT_MAX,
                E_USER_WARNING
            );
            return false;
        }
        if ($number < 0) {
            return $negative . $this->convert_number_to_words(abs($number));
        }
        $string = $fraction = null;
        if (strpos($number, '.') !== false) {
            list($number, $fraction) = explode('.', $number);
        }
        switch (true) {
            case $number < 21:
                $string = $dictionary[$number];
                break;
            case $number < 100:
                $tens   = ((int) ($number / 10)) * 10;
                $units  = $number % 10;
                $string = $dictionary[$tens];
                if ($units) {
                    $string .= $hyphen . $dictionary[$units];
                }
                break;
            case $number < 1000:
                $hundreds  = $number / 100;
                $remainder = $number % 100;
                $string = $dictionary[$hundreds] . ' ' . $dictionary[100];
                if ($remainder) {
                    $string .= $conjunction . $this->convert_number_to_words($remainder);
                }
                break;
            default:
                $baseUnit = pow(1000, floor(log($number, 1000)));
                $numBaseUnits = (int) ($number / $baseUnit);
                $remainder = $number % $baseUnit;
                $string = $this->convert_number_to_words($numBaseUnits) . ' ' . $dictionary[$baseUnit];
                if ($remainder) {
                    $string .= $remainder < 100 ? $conjunction : $separator;
                    $string .= $this->convert_number_to_words($remainder);
                }
                break;
        }
        if (null !== $fraction && is_numeric($fraction)) {
            $string .= $decimal;
            $words = array();
            foreach (str_split((string) $fraction) as $number) {
                $words[] = $dictionary[$number];
            }
            $string .= implode(' ', $words);
        }
        return $string;
    }
    static function toUrl($url = null)
    {
        header_remove();
        if ($url == null) {
            $url = $_SERVER["HTTP_REFERER"];
        }
        header("Location: " . $url);
        exit();
    }

    static function Actual_link()
    {
        $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        return $actual_link;
    }

    static function LinkQrcode($data)
    {
        return "/public/phpqrcode/index.php?data=" . $data;
    }

    static function RandomString($a)
    {
        $characters = "0123456789abcdefghjklzxcvbnmqwertyuiopasdfgh{}[]()!@#$%^&*";
        $randstring = "";
        for ($i = 0; $i < $a; $i++) {
            $randstring .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $randstring;
    }

    static function bodautv($str)
    {
        if (!$str)
            return false;

        $str = str_replace(array(',', '<', '>', '&', '{', '}', "[", "]", '*', '?', '/', '+', '@', '%', '"'), array(' '), $str);
        $str = str_replace(array("'"), array(' '), $str);
        while (strpos($str, "  ") > 0) {
            $str = str_replace("  ", " ", $str);
        }
        $unicode = array(
            'a' => 'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
            'A' => 'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
            'd' => 'đ',
            'D' => 'Đ',
            'e' => 'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
            'E' => 'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
            'i' => 'í|ì|ỉ|ĩ|ị',
            'I' => 'Í|Ì|Ỉ|Ĩ|Ị',
            'o' => 'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
            'O' => 'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
            'u' => 'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
            'U' => 'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
            'y' => 'ý|ỳ|ỷ|ỹ|ỵ',
            'Y' => 'Ý|Ỳ|Ỷ|Ỹ|Ỵ'
        );
        foreach ($unicode as $khongdau => $codau) {
            $str = preg_replace("/($codau)/i", $khongdau, $str);
        }
        $str = strtolower($str);
        $str = trim($str);
        $str = preg_replace('/[^a-zA-Z0-9\ ]/', '', $str);
        $str = str_replace(" ", "-", $str);
        return $str;
    }

    static function DeCodeHTML()
    {

        $str = ob_get_clean();
        $Model_Infor = new \Model\infor();
        $DSOption = $Model_Infor->infors();
        $str = str_replace("{Title}", \Model_Seo::$Title, $str);
        $str = str_replace("{Des}", \Model_Seo::$des, $str);
        $str = str_replace("{Keyword}", \Model_Seo::$key, $str);
        if ($DSOption)
            foreach ($DSOption as $k => $value) {
                $str = str_replace("{" . $value["Name"] . "}", $value["Content"], $str);
                $str = str_replace("[" . $value["Name"] . "]", $value["Content"], $str);
            }
        echo $str;
    }

    public static function DateTimeFormat()
    {
        return "d-m-Y H:i";
    }

    public static function DateTimeToDB()
    {
        return "Y-m-d H:i:s";
    }

    public static function DateFormat()
    {
        return "H:i d-m-Y";
    }

    public static function ToDate($date)
    {
        return date(self::DateFormat(), strtotime($date));
    }

    static function minimizeCSSsimple($css)
    {
        $css = preg_replace('/\/\*((?!\*\/).)*\*\//', '', $css); // negative look ahead
        $css = preg_replace('/\s{2,}/', ' ', $css);
        $css = preg_replace('/\s*([:;{}])\s*/', '$1', $css);
        $css = preg_replace('/;}/', '}', $css);
        return $css;
    }

    public static function compress_htmlcode($codedata)
    {
        $searchdata = array(
            '/\>[^\S ]+/s', // remove whitespaces after tags
            '/[^\S ]+\</s', // remove whitespaces before tags
            '/(\s)+/s' // remove multiple whitespace sequences
        );
        $replacedata = array('>', '<', '\\1');
        $codedata = preg_replace($searchdata, $replacedata, $codedata);
        return $codedata;
    }

    public static function CheckName($param0)
    {
        return strip_tags($param0);
    }

    public static function CheckPhone($param0)
    {
        return strip_tags($param0);
    }

    public static function CheckEmail($param0)
    {
        return strip_tags($param0);
    }

    public static function CheckDiaChi($formUser)
    {
        return strip_tags($formUser);
    }

    public static function ChekId($userPost)
    {
        $userPost = intval($userPost);
        $userPost = max($userPost, 0);
        return intval($userPost);
    }

    public static function CheckId($formUser)
    {
        return self::ChekId($formUser);
    }
    public static function NumberToStringFomatZero($value, $numString = 6)
    {
        return str_pad($value, $numString, '0', STR_PAD_LEFT);
    }

    public static function PhoneFomat($number)
    {
        $number = preg_replace("/[^\d]/", "", $number);
        // get number length.
        $length = strlen($number);
        // if number = 10
        if ($length == 10) {
            $number = preg_replace("/^1?(\d{4})(\d{3})(\d{3})$/", "$1 $2 $3", $number);
        }
        return $number;
    }

    public static function NameFileCache($url)
    {
        return "cache/" . sha1($url) . ".html";;
    }
    static public function LinkPhanTrang($url, $params, $pageIndex = "page")
    {
        $urlsub = "";
        unset($params[$pageIndex]);
        foreach ($params as $k => $v) {
            $urlsub .= "&{$k}={$v}";
        }
        $urlsub = substr($urlsub, 1);
        return "{$url}?{$urlsub}&{$pageIndex}=[i]";
    }
    public static function PhanTrang($TongTrang, $TrangHienTai, $DuongDan)
    {
        $PhanTrang = ' <ul class="pagination mt-10 mb-0">';
        $PhanTrang .= "<li><a>{$TrangHienTai}/{$TongTrang}</a></li>";
        $tu = $TrangHienTai - 4;
        $den = $TrangHienTai + 4;
        $tu = $tu <= 0 ? 1 : $tu;
        if ($tu > 1) {
            $DuongDan1 = str_replace("[i]", 1, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '"><<</a></li>';
        }
        if ($tu > 1) {
            $DuongDan1 = str_replace("[i]", $TrangHienTai - 1, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '"><</a></li>';
        }

        $den = $den >= $TongTrang ? $TongTrang : $den;
        for ($i = $tu; $i <= $den; $i++) {
            $DuongDan1 = str_replace("[i]", $i, $DuongDan);
            if ($i == $TrangHienTai)
                $PhanTrang .= '<li class="active" ><a href="' . $DuongDan1 . '">' . $i . '</a></li>';
            else
                $PhanTrang .= '<li><a href="' . $DuongDan1 . '">' . $i . '</a></li>';
        }

        if ($den < $TongTrang) {
            $DuongDan1 = str_replace("[i]", $TrangHienTai + 1, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '">></a></li>';
        }
        if ($den < $TongTrang) {
            $DuongDan1 = str_replace("[i]", $TongTrang, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '">>></a></li>';
        }

        $PhanTrang .= '</ul>';
        return $PhanTrang;
    }

    public static function GetIndex($k, $pagesIndex, $pageNumber)
    {
        return ($pageNumber * ($pagesIndex - 1)) + $k + 1;
    }

    public static function CheckInput($param)
    {
        $param = trim($param);
        $param = addslashes($param);
        $param = htmlspecialchars($param);
        return $param;
    }

    public static function MoneyFomat($param0)
    {
        return number_format($param0, 0, '.', ',') . "đ";
    }

    public static function NumberFomat($param0)
    {
        return number_format($param0, 0, '.', ',');
    }
}
