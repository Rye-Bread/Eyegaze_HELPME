<!DOCTYPE html>
<html>
	
<head>
	
  <link rel="stylesheet" href="newfaqstyle.css" type="text/css" />
  
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
  
</head>

<body>
	
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
	
	<div id="FAQtitle">
		Sitemap
	</div>
	
		
	<div id="sitemapbody">
		<br>
		
		<header id="sitemapsubtitle">HARDWARE</header>
		
		<br>
		
			<table class="sitemaplist" style="width: 100%">
				<tbody>
					<tr>
						<td><a href="">Example</a></td>
						
						<td><a href="">Example</a></td>
					</tr>
					<tr>
						<td><a href="">Example</a></td>
						
						<td><a href="">Example</a></td>
					</tr>
					<tr>
						<td><a href="">Example</a></td>
						
						<td><a href="">Example</a></td>
					</tr>
				</tbody>
			</table>
		<br>
		
		<header id="sitemapsubtitle">SOFTWARE</header>
		<br>
			<table class="sitemaplist" style="width: 100%">
				<tbody>
					<tr>
						<td><a href="">Example</a></td>
						
						<td><a href="">Example</a></td>
					</tr>
				</tbody>
			</table>
		
	</div>
	
	

</body>
</html>