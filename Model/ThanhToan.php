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



    public function InsertLSGiaodich(
        $sothe,
        $sotien,
        $noidungGD
    ) {

        $username = "vankkhang";
        $password = "vankhang123456";
        $client = new SoapClient(self::SERVICE_WSDL, [
            'cache_wsdl' => WSDL_CACHE_NONE,
            'trace' => 1,
            'soap_version' => SOAP_1_2,
        ]);
        $params = [
            'Username' => $username,
            'Password' => $password,
            "Sothe" => $sothe,
            "Sotien" =>  $sotien,
            "LoaiGD" => 1,
            "NoidungGD" => $noidungGD,
            "taikhoan" =>  "vankkhang",
        ];

        $paramsXml = <<<XML
            <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/">
            <soap:Header>
                <tem:AuthHeader>
                    <!--Optional:-->
                    <tem:Username>vankkhang</tem:Username>
                    <!--Optional:-->
                    <tem:Password>vankhang123456</tem:Password>
                </tem:AuthHeader>
            </soap:Header>
            <soap:Body>
                <tem:InsertLSGiaodich>
                    <tem:Sothe>042D5D72D85C80</tem:Sothe>
                    <tem:Sotien>1000</tem:Sotien>
                    <tem:LoaiGD>1</tem:LoaiGD> 
                    <tem:NoidungGD>ttdh110</tem:NoidungGD> 
                    <tem:taikhoan>vankkhang</tem:taikhoan>
                </tem:InsertLSGiaodich>
            </soap:Body>
            </soap:Envelope>
        XML;

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
