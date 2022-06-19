<?php

namespace Model;

interface IModelStatic {

    public function Init();

    public static function Post($model);

    public static function Put($model);

    public static function Delete($id);

    public static function GetById($id);

    public function ToSelect();

    public static function GetAllPT($name, &$total, $indexPage = 1, $pageNumber = 10);
}
