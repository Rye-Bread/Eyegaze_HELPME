<!DOCTYPE html>
<html>

<head>

  <link rel="stylesheet" href="knowledgebase.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="footer.css" />
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
	<?php //First open the script with tags.
	//TODO: Another field in database to allow multiple page formats; this is optional goal.
	// Create connection
	$conn = mysqli_connect("localhost", "root", "", "eyegaze");
	// Check connection
	if (mysqli_connect_errno())
	{
		echo("Connect Failed");
		exit();
	}
	//First we need to get the parameter of the "page" we want to view
	$page = "Sample Page";


	//If there is a particular page we're supposed to be showing, show it. If not, we get the sample stuff.


  //More php
		if( isset($_GET['Title']))
		{$page = $_GET['Title'];};
	echo "</div>";
	//For example, the URL might now be localhost/topic.php&Title=camera_alignment

	//now with the correct page title stored in $page, we can ask the database for everything it has on the record with the title "camera_alignment"

	//Of course, we should sanitize the input so we don't get pwned.
	$page = strtolower($page);
	$page = trim($page, "';-");//List of all characters/strings we want removed.
	$nasty = ["union", "select", "from"];
	$page = str_replace($nasty, "", $page);//Removing nasty words like union and other sql terms.
	//By removing every required character for injections, we should be reasonably safe.
	//We won't be using these characters in our page titles anyway.
	//Doing the Mysql (procedural version)
	$result = mysqli_query($conn, "SELECT * FROM topics WHERE Title='$page'");//WHERE Title='$page'
	if($result === FALSE) {
		echo "Query failed";
	}

	//$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

	//echo "hello";
	//Now we must take the result set and put it i/Volumes/Macintosh%20HD/Applications/XAMPP/xamppfiles/htdocs/topics.phpn usable variables.
	$row = mysqli_fetch_array($result);
/////////////////////////////////////////////////////After this line you can use row[] variables.
	echo "<div id='templateTitle'>$row[0]</div>";
	echo "<br>";
	echo "<div id='templateBody'>$row[1]</div>";
	echo "<br>";
	echo "<div id='templateBody'>$row[2]</div>";
	echo "<br><br>";
	//The next block shows how you can get the image path from the database and display an image.
	echo "<div id='templateBody'><img src= '$row[3]' alt= 'sample image'></div>";
	echo "<br><br>";
	//This next block shows how you can use the optional images, but only if they exist:
	if ($row[4] != NULL)
	{
	echo "<img src= '$row[4]' alt= 'sample image'>";
	}
	//Please note that the text that comes from the database IS ALLOWED to have html tags in it.
	//Close our database connection.
	$conn->close();

	//now end the script.
	//Note: If this all doesn't work for some reason with mysqli, we can try PDO (more flexible but more difficult).
	//Note: When you close your php script, the variables get deleted. You can store them in session variables if you like to use them between scripts.
	//    $SESSION_['myvariable'] = "mystring"; //Can be any data, not just strings.
	//You probably won't need this though, since to dynamically generate the whole webpage, the same PHP script can encompass it all,
	//You'll just need to use the "echo" function to output any html.
	?>

<?php
include ("footer.inc");
?>

</body>
</html>
