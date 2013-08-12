<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
					  "XHTML1-s.dtd" >
<html xmlns="http://www.w3.org/TR/1999/REC-html-in-xml"
	  xml:lang="en" lang="en" >
	<head>
		<title>Ben Lerchin :: R&#233;sum&#233</title>
		<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<script type="text/javascript" src="http://fast.fonts.net/jsapi/946b004e-51e5-4de8-b750-acf01077741f.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.js"></script>
		<script type="text/javascript" src="jquery.scrollTo-1.4.3.1-min.js"></script>
		<script type="text/javascript" src="fancy.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body>
		<div id="content">
		<?php

		// Allocate a new XSLT processor

		$xp = new XsltProcessor();

		$xsl = new DomDocument;
		$xsl->load('resume_template.xsl');

		$xp->importStylesheet($xsl);

		$xml = new DomDocument;
		$xml->load('blerchin_resume.xml');

		// transform the XML into HTML using the XSL file
		   if ($html = $xp->transformToXML($xml)) {
			 echo $html;
			   } else {
			     trigger_error('XSL transformation failed.', E_USER_ERROR);
			 } // if 


		?>
		</div>
	</body>
</html>
