<?php

namespace Model\Brand;

interface BrandIForm {

    public static function Id($val = null);

    public static function Name($val = null);

    public static function Images($val = null);

    public static function Note($val = null);

    public static function Desc($val = null);

    public static function Title($val = null);

    public static function Keyword($val = null);

    public static function isDelete($val = null);
}

?>