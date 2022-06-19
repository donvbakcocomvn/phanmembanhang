<?php

namespace Module\mail\Model;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

class Mail {

    public static $MailConfig;

    public function __construct($config = null) {
        MailConfig::getConfig();
    }

    function SendMail($sub, $body, $sender, $cc = [], $bcc = []) {
        try {
            $mail = new PHPMailer(true);
            //Server settings
            $mail->SMTPDebug = SMTP::DEBUG_OFF;                      //Enable verbose debug output
            $mail->CharSet = "UTF-8";
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host = MailConfig::$Host;
            $mail->SMTPAuth = true;                                   //Enable SMTP authentication
            if (MailConfig::$UserName == "") {
                throw new Exception('Chưa cấu Hình Mail');
            }
            $mail->Username = MailConfig::$UserName;                     //SMTP username
            $mail->Password = MailConfig::$Password;
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         //Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
            $mail->Port = MailConfig::$Port;
            $mail->setFrom(MailConfig::$UserName, MailConfig::$Title);
            $mail->addAddress($sender);     //Add a recipient
            if ($cc) {
                foreach ($cc as $email => $name) {
                    $mail->addBCC($email, $nane);
                }
            }
            if ($bcc) {
                foreach ($bcc as $email) {
                    $mail->addBCC($email);
                }
            }
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = $sub;
            $mail->Body = $body;
            $mail->AltBody = 'Mail Tự Động';
            $mail->send();
        } catch (\Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }

}
