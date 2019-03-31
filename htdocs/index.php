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
		Hello and welcome to the Eyegaze self-help resource!<br>
	</div>
	
	<div id="FAQbody">
		<div class="upperleft">
			<img src="selfhelpmenu.png" alt="selfhelpmenu.png" height = "96px" width = "155px">
		</div>
	
		<h2> Please click either "FAQ" or "Drill-Down" on your grid to get started. </h2>
		<h3> If you don't know what your problem is, you may want to go with "Drill-Down" <br>
		Otherwise, one of the other options may be more helpful to you. </h3>
		<div class = "bottomright">
			<img src = "call1800.png" alt = "Eyegaze help-desk number: 1800-EYEGAZE" height = "100px" width = "400px">
		</div>
	</div>
</body>

</html>