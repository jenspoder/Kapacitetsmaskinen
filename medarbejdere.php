<?php 
require_once('authenticate.php');
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>  </title>
	<meta name="generator" content="TextMate http://macromates.com/">
	<meta name="author" content="Jens Poder">
	<link rel="stylesheet" href="style.css" type="text/css" />
	
	<!-- Date: 2010-07-31 -->
</head>
<body>

<?php 	

/**	
* @author: Jens Poder (jens.poder@gmail.com)
* Denne kode håndterer oprettelse og ændring af medarbejdere i Peytz & Co. Kapacitetmaskinen. Det er tanken at lade hele koden køre på denne ene side, der postes til THIS istedet for en masse undersider. Koden består af følgende elementer:
* 0: Element der inkluderer appvars og classes der skal bruges
* 1: Element til oprette nye medarbejdere i firmatet (vises hvis $_POST ikke er sat eller hvis $_POST[flag] er 3)
* 2: Element der lister alle medarbejdere med deres data og link til at rette dem (vises ligegyldigt hvad)
* 3: Element der skriver bekræftelse på at medarbejder er
* 4: Element der muliggør rettelse af den enkelte medarbejder
* Det er tænkt at koden i videst mulige udstrækning skal trække på medarbejder-klassen medarbejder_class.php
**/
?>

<div id="container">
	<h1>Medarbejdere</h1>
</div>

</body>
</html>
