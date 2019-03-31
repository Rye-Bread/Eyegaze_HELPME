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
		Error Messages
	</div>

	<div id="FAQbody">
		<div id="LeftCol" class="faqlist">
			<ol type="1">		
			  <li><a href="http://localhost/9003error.php">9003 Error</a></li>
			  <li><a href="http://localhost/9005error.php">9005 Error</a></li>
			</ol>
		</div>
	</div>


</body>
</html>
