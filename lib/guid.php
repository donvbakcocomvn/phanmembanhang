<?php

namespace lib;

class guid
{

    public static function guidV4_1($data = null)
    {
        if (function_exists('com_create_guid') === true) {
            return trim(com_create_guid(), '{}');
        }
        return sprintf(
            '%04X%04X-%04X-%04X-%04X-%04X%04X%04X',
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time()),
            mt_rand(rand(0, time()), time())
        );
    }

    static  function guidV4_2($trim = true)
    {
        mt_srand((float)microtime() * 10000);
        $charid = strtolower(md5(uniqid(rand(), true)));
        $hyphen = chr(45);                  // "-"
        $lbrace = $trim ? "" : chr(123);    // "{"
        $rbrace = $trim ? "" : chr(125);    // "}"
        $guidv4 = $lbrace .
            substr($charid,  0,  8) . $hyphen .
            substr($charid,  8,  4) . $hyphen .
            substr($charid, 12,  4) . $hyphen .
            substr($charid, 16,  4) . $hyphen .
            substr($charid, 20, 12) .
            $rbrace;
        return $guidv4;
    }
    static function guidV4()
    {
        // Create GUID (Globally Unique Identifier)
        $namespace = rand(11111, 99999);
        $guid = hash("sha256", time() . $namespace);
        $uid = uniqid(time(), true);
        $data = $namespace;
        $data .= $_SERVER['REQUEST_TIME'];
        $data .= $_SERVER['HTTP_USER_AGENT'];
        $data .= $_SERVER['REMOTE_ADDR'];
        $data .= $_SERVER['REMOTE_PORT'];
        $hash = strtoupper(hash('ripemd128', $uid . $guid . md5($data)));
        $guid = substr($hash,  0,  8) . '-' .
            substr($hash,  8,  4) . '-' .
            substr($hash, 12,  4) . '-' .
            substr($hash, 16,  4) . '-' .
            substr($hash, 20, 12);
        return $guid;
    }
    function GUID()
    {
        if (function_exists('com_create_guid') === true) {
            return trim(com_create_guid(), '{}');
        }
        return sprintf(
            '%04X%04X-%04X-%04X-%04X-%04X%04X%04X',
            mt_rand(0, time()),
            mt_rand(0, time()),
            mt_rand(0, time()),
            mt_rand(16384, time()),
            mt_rand(32768, time()),
            mt_rand(0, time()),
            mt_rand(0, time()),
            mt_rand(0, time())
        );
    }
}
