<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
					  "XHTML1-s.dtd" >
<html xmlns="http://www.w3.org/TR/1999/REC-html-in-xml"
	  xml:lang="en" lang="en" >
<head>
</head>
<body>
<?php

// Allocate a new XSLT processor

$xh = xslt_create();

// Process the document, returning the result into the $result variable

$result = xslt_process($xh, 'blerchin_resume.xml', 'resume_template.xsl');

if ($result) {

    print "SUCCESS, sample.xml was transformed by sample.xsl into the \$result";

    print " variable, the \$result variable has the following contents\n<br>\n";

    print "<pre>\n";

    print $result;

    print "</pre>\n";

}

else {

    print "Sorry, sample.xml could not be transformed by sample.xsl into";

    print "  the \$result variable the reason is that " . xslt_error($xh) . 

    print " and the error code is " . xslt_errno($xh);

}

xslt_free($xh);

?>
</body>
</html>