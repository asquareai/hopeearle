<?php

require_once('PHPMailer/class.phpmailer.php');


$attachmentsName = basename($_FILES['fileToUpload']['name']);

if (!file_exists('Attachments')) {
    mkdir('Attachments', 0777, true);
}

$fold = rand ( 0 , 9999999 );

if (!file_exists('Attachments/'.$fold)) {
    mkdir('Attachments/'.$fold, 0777, true);
}

$path_of_uploaded_file = 'Attachments/'.$fold .'/'. $attachmentsName;

$tmp_path = $_FILES["fileToUpload"]["tmp_name"];


echo "File name: " . $path_of_uploaded_file;


if ($_FILES["fileToUpload"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $path_of_uploaded_file)) {
		echo 'File Uploaded';
	}
	else{
		echo 'File not Uploaded';
	}





$email = new PHPMailer();
$email->SetFrom('mahadevan@pragitech.com', 'Mahadevan'); //Name is optional
$email->Subject   = 'NSA Website';
$email->Body      = "NSA Website";
$email->AddAddress( 'login2ssudhakar@gmail.com' );
$email->AddAddress( 'mahadevan@pragitech.com' );

$file_to_attach = "test.txt";

$email->AddAttachment( $path_of_uploaded_file , $attachmentsName );

return $email->Send();

?>