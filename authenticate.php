<?php 
// User name and password for authentication 
$username = 'admin'; 
$password = 'ib';
if (!isset($_SERVER['PHP_AUTH_USER']) || !isset($_SERVER['PHP_AUTH_PW']) || ($_SERVER['PHP_AUTH_USER'] != $username) || ($_SERVER['PHP_AUTH_PW'] != $password)) 
	{ 
	// The user name/password are incorrect so send the authentication headers 
	header('HTTP/1.1 401 Unauthorized'); 
	header('WWW-Authenticate: Basic realm="Trafiklys Admin"'); 
	exit('<h2>Trafiklys</h2>Beklager, men du skal indtaste et validt brugernavn og password for at komme ind her.');
	} ?>
