<!DOCTYPE html>
<html>

<head>

  <link rel="stylesheet" href="topicsfaqstyle.css" type="text/css" />

  <link rel="icon" href="img/eyeicon.png" type="image/gif" sizes="20x16">

  <title>FAQs</title>

  <div class="header">
	<table style="width: 100%">
		<tbody>
			<tr>
				<td align="left"><img src="img/LClogo.png" alt="LClogo" style="width:265px;height:50px;" class="LClogo"></td>

				<td align="right"><img src="img/phoneicon.png" alt="phoneicon" style="width:40px;height:30px;" class="phoneicon">
					(800) 393-4293</td>
			</tr>
		</tbody>
	</table>
  </div>

  <div id="scroll">
		<button onclick="scrollWin(0, 50)" id="scrollButton">Scroll down</button>
		<button onclick="scrollWin(0, -50)" id="scrollButton">Scroll up</button>
		<!--<button onclick="scrollWin(100, 0)">Scroll right</button>
		<button onclick="scrollWin(-100, 0)">Scroll left</button> -->

		<script>
			function scrollWin(x, y) {
			window.scrollBy(x, y);
			}
		</script>
	</div>

	<button id="topBtn" class="topBtn"><a href="">Back to the top</a></button>

	<br><br>

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
			Access keys can only be one character and cannot be repeated on the same page. Each link needs a unique character -->
					  <li><a href="calibration.php" accesskey="1">Issues with calibration</a></li>
					  <li><a href="keyboard_connectivity.php" accesskey="2">Keyboard Connectivity</a></li>
					  <li><a href="camera_connectivity.php" accesskey="3">Camera Connectivity</a></li>
					  <li><a href="error_messages.php" accesskey="4">Error Messages</a></li>
					  <li><a href="battery_issues.php" accesskey="5">Issues with the Battery</a></li>
					  <li><a href="edge_links.php" accesskey="6">How to set up Edge Links</a></li>
					</ol>
	</div>

	<div id="RightCol" class="faqlist">
		<br>
		<header id="FAQsubtitle">SOFTWARE</header>
		<ol type="1">
		  <li><a href="grid_issues.php" accesskey="a">Issues with Grid</a></li>
		  <li><a href="networking_issues.php" accesskey="b">Network Issues</a></li>
		</ol>
	</div>


</body>
</html>
