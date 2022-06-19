<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

/**
 * Description of HinhAnh
 *
 * @author MSI
 */
class HinhAnh {

    function mkdir_r($dirName, $rights = 0777) {
        $dirs = explode('/', $dirName);
        $dir = '';
        foreach ($dirs as $part) {
            $dir .= $part . '/';
            if (!is_dir($dir) && strlen($dir) > 0)
                mkdir($dir, $rights);
        }
    }

    //put your code here
    function upload_multi_image($file, $folder) {
        $this->mkdir_r($folder);
        $extension = "jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF";
        $listName = array();
        foreach ($file['name'] as $k => $name) {
            if ($name) {
                copy($file["tmp_name"][$k], $folder . $file['name'][$k]);
                $listName[] = $file['name'];
            }
        }
        return $listName;
    }

}
