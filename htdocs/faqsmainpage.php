<!DOCTYPE html>
<html>

<head>

  <link rel="stylesheet" href="knowledgebase.css" type="text/css" />
  <link rel="icon" href="img/eyeicon.png" type="image/gif" sizes="20x16">

  <title>FAQs</title>

  <div class="header">
	<table style="width: 100%">
		<tbody>
			<tr>
				<td align="left"><a href="index.php" accesskey="h"><img src="img/LClogo.png" alt="LClogo" style="width:265px;height:50px;" class="LClogo"></a></td>

				<td align="right"><img src="img/phoneicon.png" alt="phoneicon" style="width:40px;height:30px;" class="phoneicon">
					(800) 393-4293</td>
			</tr>
		</tbody>
	</table>
  </div>

</head>

<body>
	<div id="FAQtitle">
	FAQs
	</div>

	<div id="FAQbody">
	<br>
	Select from the following list of Hardware and Software FAQs. Browse through these FAQs to find answers to commonly raised questions. Can't find your problem on this page? Try going back and using the Interactive Help Tool.
	</div>

	<div id="LeftCol" class="faqlist">
		<br>
		<header id="FAQsubtitle">HARDWARE</header>
			<ol type="1">
				<!--Use the file name instead of copying the URL from your browser like the links below
				As long as the file is in htdocs, it should automatically detect it and open the page
				The accesskey element is used to assign hotkeys to links. Use ALT + [KEY] to test in chrome
				Access keys can only be one character and cannot be repeated on the same page. Each link needs
				unique character -->
				<li><a href="calibration.php" accesskey="1">
				  Having issues with calibration?</a></li>

				<li><a href="keyboard_connectivity.php" accesskey="2">
				  Problems with keyboard connectivity?</a></li>

				<li><a href="topics.php?Title=Camera%20Connectivity" accesskey="3">
				  Problems with camera connectivity?</a></li>

				<li><a href="error_messages.php" accesskey="4">
				  Receiving error messages?</a></li>

				<li><a href="topics.php?Title=Battery%20Life" accesskey="5">
				  Having issues with the battery?</a></li>

				<li><a href="edge_links.php" accesskey="6">
				  Need assistance setting up Edge Links?</a></li>
				</ol>
	</div>

	<div id="RightCol" class="faqlist">
		<br>
		<header id="FAQsubtitle">SOFTWARE</header>
			<ol type="a">
				<li><a href="grid_issues.php" accesskey="a">
					Having issues with accessing email through your browser?</a></li>
				<li><a href="networking_issues.php" accesskey="b">
					Having issues with accessing email through Grid?</a></li>
				<li><a href="networking_issues.php" accesskey="c">
					Trouble with texting or phone calls?</a></li>
				<li><a href="networking_issues.php" accesskey="d">
					Problems with setting up the WhatsApp desktop client?</a></li>
				<li><a href="networking_issues.php" accesskey="e">
					Can't connect to the internet?</a></li>
				<li><a href="networking_issues.php" accesskey="f">
					Encountering errors while entering custom phrases?</a></li>
			</ol>
	</div>

<?php
include ("footer.inc");
?>

</body>
</html>
