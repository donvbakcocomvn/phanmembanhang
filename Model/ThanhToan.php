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

    const SERVICE_WSDL = 'http://113.161.252.163:8000/service.asmx?WSDL';
    public function Header($userName, $passWord)
    {
        $headerbody = [
            'Username' => $userName,
            'Password' => $passWord
        ];
        return  new SoapHeader("http://tempuri.org/", 'AuthHeader', $headerbody);
    }

    function BCSudungthe_sothe(
        $soThe,
        $tuNgay = null,
        $denNgay = null
    ) {
        $username = "vankkhang";
        $password = "vankhang123456";
        $client = new SoapClient(self::SERVICE_WSDL);
        $params = [
            "tungay" => $tuNgay,
            "denngay" => $denNgay,
            "sothe" => $soThe,
            "tieuchi" => 1
        ];
        $client->__setSoapHeaders($this->Header($username, $password));
        $response = $client->__soapCall(__FUNCTION__, $params);
        return $response;
    }

    public function InsertLSGiaodich(
        $sothe,
        $sotien,
        $noidungGD
    ) {

        $username = "vankkhang";
        $password = "vankhang123456";
        $client = new SoapClient(self::SERVICE_WSDL);
        $params = [
            "Sothe" => $sothe,
            "Sotien" =>  $sotien,
            "LoaiGD" => 1,
            "NoidungGD" => $noidungGD,
            "taikhoan" =>  "vankkhang",
        ];
        $client->__setSoapHeaders($this->Header($username, $password));
        $response = $client->__soapCall("InsertLSGiaodich", $params);
        return $response;
        try {
        } catch (Exception $ex) {
            echo $ex->getMessage();
        }
        return null;
    }
}
