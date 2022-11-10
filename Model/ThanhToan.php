<?php

namespace Model;


use Exception;
use nusoap_client;
use SimpleXMLElement;
use SoapClient;
use SoapHeader;

class ThanhToan
{
    const userName = "vankkhang";
    const password = "vankhang123456";
    private $parameters = array();
    const SERVICE_WSDL = 'https://paynhanai.vkhealth.vn:8001/service.asmx?WSDL';
    public function Header()
    {
        $headerbody = [
            'Username' => self::userName,
            'Password' => self::password
        ];
        return  new SoapHeader("http://tempuri.org/", 'AuthHeader', $headerbody, false);
    }

    public function SoapClient()
    {
        ini_set("soap.wsdl_cache_enabled", 0);
        ini_set('soap.wsdl_cache', 0);
        $options = array(
            'version' =>  SOAP_1_2,
            'cache_wsdl' =>  WSDL_CACHE_NONE,

        );
        $client = new SoapClient(self::SERVICE_WSDL, $options);
        $client->__setSoapHeaders($this->Header());

        return $client;
    }
    public function SoapClient1()
    {

        $options = array(
            'cache_wsdl' => 0,
            'trace' => 1,
            'stream_context' => stream_context_create(array(
                'ssl' => array(
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                )
            ))
        );

        // $client = new SoapClient(<wsdl url to be entered here>, $options);

        // $options = [
        //     'stream_context' => stream_context_create(array(
        //         'ssl' => array(
        //             'verify_peer' => false,
        //             'verify_peer_name' => false,
        //             'allow_self_signed' => false
        //         )
        //     )),
        // ];
        $client = new SoapClient(self::SERVICE_WSDL, $options);
        $client->__setSoapHeaders($this->Header());
        return $client;
    }

    public function nusoap(
        $sothe,
        $sotien,
        $noidungGD
    ) {

        $client = new nusoap_client(self::SERVICE_WSDL, 'wsdl');
        $client->soap_defencoding = 'UTF-8';
        $client->decode_utf8 = FALSE;
        $client->authtype = "AuthHeader";

        $client->setHeaders($this->Header());
        $params = [
            "Sothe" => $sothe,
            "Sotien" =>  $sotien,
            "LoaiGD" => 1,
            "NoidungGD" => $noidungGD,
            "taikhoan" =>  "vankkhang",
        ];
        $response = $client->call("InsertLSGiaodich", $params);
        return $response;
    }


    function BCSudungthe_sothe(
        $soThe,
        $tuNgay = null,
        $denNgay = null
    ) {
        $tuNgay = $tuNgay == null ? date("y-m-d", time() - (20 * 3600 * 24)) : $tuNgay;
        $denNgay = $denNgay == null ? date("y-m-d", time()) : $denNgay;
        $client = $this->SoapClient1();
        $params = [
            "tungay" => $tuNgay,
            "denngay" => $denNgay,
            "sothe" => $soThe,
            "tieuchi" => 1
        ];
        $response = $client->__soapCall(__FUNCTION__, $params, null, $this->Header());

        echo $response->BCSudungthe_sotheResult->any;
        return $response;
    }
    function GetLichsuGD(
        $soThe
    ) {
        $client = $this->SoapClient();
        $params = [
            "Sothe" => $soThe,
        ];
        $response = $client->GetLichsuGD($params)
            ->GetLichsuGDResult;
        return json_decode($response);
    }
    function GetHotenFromSothe(
        $soThe
    ) {
        try {
            $client = $this->SoapClient();
            $params = [
                "sothe" => $soThe,
            ];
            $response = $client->GetHotenFromSothe($params)
                ->GetHotenFromSotheResult;
            return $response;
        } catch (Exception $th) {
            var_dump($th);
        }
    }

    public function GetTTBenhnhan($soThe)
    {
        try {
            $client = $this->SoapClient();
            $params = [
                "sothe" => $soThe,
            ];
            $response = $client->GetTTBenhnhan($params)
                ->GetTTBenhnhanResult;
            return json_decode($response, JSON_OBJECT_AS_ARRAY);
        } catch (Exception $th) {
            var_dump($th);
        }
    }
    public function HoanTien(
        $sothe,
        $sotien,
        $noidungGD
    ) {
        try {
            $client = $this->SoapClient();
            $params = [
                "Sothe" => $sothe,
                "Sotien" =>  $sotien,
                "LoaiGD" => 2,
                "NoidungGD" =>  "HT: {$noidungGD}",
                "taikhoan" =>  "vankkhang",
            ];
            // $response = $client->__soapCall("InsertLSGiaodich", $params, null, $this->Header());
            $response = $client->InsertLSGiaodich($params);
            // var_dump($response);
            return $response;
        } catch (Exception $ex) {
            echo $ex->getMessage();
        }
        return null;
    }
    public function InsertLSGiaodich(
        $sothe,
        $sotien,
        $noidungGD
    ) {
        try {
            $client = $this->SoapClient();
            $params = [
                "Sothe" => $sothe,
                "Sotien" =>  $sotien,
                "LoaiGD" => 1,
                "NoidungGD" =>  "TTDH: {$noidungGD}",
                "taikhoan" =>  "vankkhang",
            ];
            // $response = $client->__soapCall("InsertLSGiaodich", $params, null, $this->Header());
            $response = $client->InsertLSGiaodich($params);
            // var_dump($response);
            return $response;
        } catch (Exception $ex) {
            echo $ex->getMessage();
        }
        return null;
    }
}
