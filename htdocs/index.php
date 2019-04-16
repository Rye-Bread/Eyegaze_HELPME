<!DOCTYPE html>
<html>

<head>

  <link rel="stylesheet" href="knowledgebase.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="footer.css" />
  <link rel="icon" href="img/eyeicon.png" type="image/gif" sizes="20x16">

  <title>Eyegaze Edge Knowledge Base</title>

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
	<br><br>
</head>

<body>

	<div id="FAQtitle">
		Hello and welcome to the Eyegaze Edge Knowledge Base!<br>
	</div>

	<div id="IndexBody" class="IndexPage">
		<h2> You can use the Grid buttons above to navigate through the Knowledge Base</h2>
		<h2> Please select option A for the FAQ or option B for the Interactive Help Tool </h2>
    <div id = "IndexOptions" class="IndexPage">
      <a href="faqsmainpage.php" accesskey="a">A - FAQ</a>
      <p> The Frequently Asked Questions (FAQ) page provides a list of topics for you to choose from.
        If you already know the specifics or root cause of the issue with your Eyegaze Edge system,
        use the FAQ to go straight to the help topic.</p>
    </div>
    <div id = "IndexOptions" class="IndexPage">
      <a href="interactiveHelpTool.php" accesskey="b">B - Interactive Help Tool</a>
      <p> The Interactive Help Tool can help you narrow down the source of your issues. It can provide helpful suggestions,
        troubleshooting steps, and useful products for you to get the most out of your Eyegaze Edge experience. If you're having an
        issue and you're not sure why or how it is happening, use this tool and answer a series of questions to find your solution.</p>
    </div>
  </div>

<?php
include ("footer.inc");
?>

</body>

</html>
