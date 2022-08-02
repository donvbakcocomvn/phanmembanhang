<?php

namespace Model;

class Content {

    public $Infor;

    function __construct() {
        $this->Infor = new \Module\minfor\Model\infor();
    }

    static function DeCodeHTML() {
        $str = ob_get_clean();
        $Content = new \Model\Content();
        $DSOption = $Content->Contents();
        if ($DSOption) {
            foreach ($DSOption as $k => $value) {
                $keystr = "__" . $k . "___";
                $str = str_replace($keystr, $value, $str);
            }
        }
        echo $str;
    }

    function Contents() {

        $DSinfor = $this->Infor->infors();
        $params =[];
        if ($DSinfor)
            foreach ($DSinfor as $in) {
                $params[$in["Name"]] = $in["Content"];
            }
        return $params;
    }

}
