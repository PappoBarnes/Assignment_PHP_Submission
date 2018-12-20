
<?php
// variables.
$servername = 'localhost';
$username = "u1774692";
$password = "10dec74";
$dbname = "u1774692";
$search = "";
// $errors = "";
$err_msg ="";
$errors=false;
$submitted=false;
$results_per_page=10;
// if (isset($_POST["searchButton"]))
try{
      $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
       $conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch (PDOException $e) 
{
	echo "Oh no, there was a problem" . $e->getMessage();}


?>

<!DOCTYPE HTML>
<html>
<head>
<title>Sole Search</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/assign.css">
<link href="https://fonts.googleapis.com/css?family=Nova+Square" rel="stylesheet">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
	<!-- <p><a href="i.php"><<< Home</a></p> -->
<header>
			
		<a href="assign_postback.php"><button id="hvr-underline-from-center">sole search</button></a>
		<div id="headImg"></div>
		<div id="headImg"></div>
		<a href="assign_design.php"><button id="hvr-underline-from-center">design</button></a>

		<!-- <a href="details.php"><button>details</button></a> -->
</header>
<section id="mainSearch">
	<div><img src="images/homeartR.png"></div>
<div id=searchResult> 
<form action="<?php echo ($_SERVER['PHP_SELF'])?>" method="POST" id="form">
<fieldset id=searchBox>
<label for="search"></label>
<input type="text" name="search" id="search" placeholder="Enter a brand, style or shoe name" value="<?php echo "$search";?>">
<!-- <input type="submit" name="submitBtn" value="search"></input> -->
</fieldset>
<input type="submit" name=""id="searchButton"></input>
</form>
</div>
<div><img src="images/homeartL.png"></div>
</section>
<div id="resultGrid">
<?php
// if(!isset($_POST["searchButton"])){
	if(empty($_POST["search"])){
		// $errors=true;
		$err_msg = "Enter a Brand, Style or Shoe Name Term";
		// echo "<p>$err_msg</p>";
}

else{
// DB Connection
$searchTerm=$_POST["search"];
$stmt = $conn->prepare("SELECT  brands.brand, shoes.id, models.model, models.brand_id, shoes.name, shoes.image, styles.style,styles.model_id, shoes.style_id 
FROM brands 
INNER JOIN models ON models.brand_id = brands.id
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN shoes ON shoes.style_id = styles.id
WHERE shoes.name LIKE :searchTerm  OR brands.brand LIKE :searchTerm  OR styles.style LIKE :searchTerm  OR models.model lIKE :searchTerm
");
$stmt->bindValue(":searchTerm","%{$searchTerm}%");
$stmt->execute();
$shoes = $stmt->fetchAll();
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

$resultCount=$_POST['search'];
$stmt = $conn->prepare ("SELECT COUNT(*) AS 'Number of Results'
FROM brands 
INNER JOIN models ON models.brand_id = brands.id
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN shoes ON shoes.style_id = styles.id
WHERE shoes.name LIKE :resultCount  OR brands.brand LIKE :resultCount  OR styles.style LIKE :resultCount  OR models.model lIKE :resultCount
");
$stmt->bindValue(":resultCount","%{$resultCount}%");
$stmt->execute();
$count = $stmt->fetchAll();


$conn = NULL;
if($count){
	foreach($count as $result)

	echo "<div id=totalResult>";
	echo "<p>Soul Search Found {$result['Number of Results']} shoe to satisty your Sole</p>";
	echo "</div>";}else{ echo "<p> no results</p>";}

//IF STATEMENT TO LOOP OVER ANY SHOES FOUND
if($shoes){
	foreach($shoes as $shoe) {
	    // echo "<div id=results>";
	    //outputs a hyperlink for each shoe
	   
	    echo "<div id=grid>";
	    echo "<a href='assign_details.php?id={$shoe["id"]}&brand={$shoe["brand_id"]}&model={$shoe["model_id"]}'>";
	    // echo "{$shoe['name']}";
	    echo "<img src={$shoe['image']}>";
		echo "</a>";
		
		echo "<div id=gridText>" ;
		echo "<p>";
		echo "{$shoe['brand']} {$shoe['model']}  {$shoe['style']} - {$shoe['name']} ";
		echo "</p>";
		

		echo "</div></div>";
		}
		
	    // echo "</div>";
	
		}else{
			echo "<h1>$err_msg</h1>";
	}


}
// }
?>
</div>
	<!-- <div id="space"></div> -->
<footer>
		<div id="footerImages">
			<a href="https://www.nike.com/gb/launch/" target="_blank"><img src="images/Asset 3logo_.svg"></a>
			<a href="https://www.vans.co.uk/" target="_blank"><img src="images/Asset 5logo_.svg"></a>
			<a href="https://www.adidas.co.uk/" target="_blank"><img src="images/Asset 6logo_.svg"></a>
			<a href="https://eu.puma.com/uk/en/mens" target="_blank"><img src="images/Asset 7logo_.svg"></a>
			<a href="https://www.reebok.co.uk/" target="_blank"><img src="images/Asset 8logo_.svg"></a>
			<a href="https://www.jordan.com/collection/"target="_blank"><img src="images/jumpman.svg"></a>
		</div>
</footer>
</body>

</body>
</html>