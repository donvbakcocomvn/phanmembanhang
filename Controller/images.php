<?php

class Controller_images extends Application {

    public function __construct() {

    }

    function index() {
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        error_reporting(E_ALL);
        try {
            $imageComp = new lib\imageComp();
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
        $readDir = new \lib\redDirectory();
        $a = [];
        $dir = "public/img/images/";
        $readDir->redDirectoryByPath($dir, $a, true);
        foreach ($a as $value) {
            echo $value . "<br>";
            $imageComp->ImageOptimizer($value);
        }
    }

}
