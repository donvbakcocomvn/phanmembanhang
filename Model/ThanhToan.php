<?php

namespace Model;

use Exception;
use SoapClient;
use SoapHeader;

class ThanhToan
{
    private $userName;
    private $password;
    private $parameters = array();

    const SERVICE_URI = 'http://113.161.252.163:8000/service.asmx/';
    public function Header($userName, $passWord)
    {
        $headerbody = array(
            'Username' => $userName,
            'Password' => $passWord
        );

        //Create Soap Header.       
        return $header = new SoapHeader(self::SERVICE_URI, 'RequestorCredentials', $headerbody);
    }
    public function InsertLSGiaodich(
        $user,
        $sothe,
        $sotien,
        $loaiGD,
        $noidungGD,
        $taikhoan
    ) {
        try {
            $userName = $user["username"] ?? "";
            $passWord = $user["password"] ?? "";
            if ($userName == "" || $passWord == "") {
                throw new Exception("Tài khoản mật khẩu không đúng");
            }
            echo $pathPost = self::SERVICE_URI . __FUNCTION__;

            $client = new SoapClient($pathPost);
            var_dump($client);
            $params = [
                "Sothe" => $sothe,
                "Sotien" => $sotien,
                "LoaiGD" => $loaiGD,
                "NoidungGD" => $noidungGD,
                "taikhoan" => $taikhoan,
            ];
            // $client->__setSoapHeaders($this->Header($userName, $passWord)); 
            $response = $client->__soapCall("InsertLSGiaodich", array($params));
            return $response;
        } catch (Exception $ex) {
            echo $ex->getMessage();
        }
        return null;
    }
}
