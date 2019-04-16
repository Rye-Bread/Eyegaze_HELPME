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
if( isset($_GET['Title']))
{$page = $_GET['Title'];}
//For example, the URL might now be localhost/topic.php&Title=camera_alignment

//now with the correct page title stored in $page, we can ask the database for everything it has on the record with the title "camera_alignment"

//Of course, we should sanitize the input so we don't get pwned.
//$page = strtolower($page);
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


//echo "hello";
//Now we must take the result set and put it in usable variables.
$data = mysqli_fetch_array($result);
echo "$data[0]";
echo "<br> <br>";
if ($data[3] == 1)//If format is 1, image appears.
{echo "<img src= '$data[4]' alt= 'sample image'><br>";}
echo $data[1];
echo "<br><br>";
echo $data[2];
echo "<br><br>";
//The next block shows how you can get the image path from the database and display an image.
if ($data[3] == 2)//If format is 2, image appears here instead.
{echo "<img src= '$data[4]' alt= 'sample image'>";}
echo "<br><br>";
//This next block shows how you can use the optional images, but only if they exist:
if ($data[5] != NULL)
{
echo "<img src= '$data[5]' alt= 'sample image'>";
}
//Please note that the text that comes from the database IS ALLOWED to have html tags in it.
//Close our database connection.
$conn->close();

//now end the script.
//Note: When you close your php script, the variables get deleted. You can store them in session variables if you like to use them between scripts.
//    $SESSION_['myvariable'] = "mystring"; //Can be any data, not just strings.
//You probably won't need this though, since to dynamically generate the whole webpage, the same PHP script can encompass it all,
//You'll just need to use the "echo" function to output arbitary amounts of formatted html.
?>

<?php
include ("footer.inc");
?>