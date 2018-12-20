
<?php
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
//DATABASE CONNECTION
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
try{
        $conn = new PDO('mysql:host=localhost;dbname=u1774692','u1774692', '10dec74');
         $conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch (PDOException $exception)
{
	echo "Oh no, there was a problem" . $exception->getMessage();
}
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
//PREPARED STATEMENTS brands.id, brands.brand, shoes.id, shoes.name, shoes.image, models.model,styles.style
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

$searchTerm = $_GET['id'];
$statement = $conn->prepare("
SELECT *
FROM brands
INNER JOIN models ON models.brand_id = brands.id
INNER JOIN styles ON styles.model_id = models.id
INNER JOIN shoes ON shoes.style_id = styles.id
INNER JOIN links ON links.shoe_id = shoes.id
WHERE shoes.id = :id");
$statement->bindValue(':id',$searchTerm);
$statement->execute();
$shoes = $statement->fetchAll();
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
$relatedSearch = $_GET['brand'];
$relatedSearch_2 = $_GET['model'];
$statement = $conn->prepare("
SELECT *
FROM brands
INNER JOIN models ON models.brand_id = brands.id
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN shoes ON shoes.style_id = styles.id
INNER JOIN links ON links.shoe_id = shoes.id

WHERE brand_id = :brand AND model_id = :model AND shoes.id != :id");
$statement->bindValue(":brand",$relatedSearch);
$statement->bindValue(":model",$relatedSearch_2);
$statement->bindValue(':id',$searchTerm);
$statement->execute();
$relShoes = $statement->fetchAll();

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
// $relatedSearch = $_GET['id'];
// $statement = $conn->prepare("
// SELECT *
// FROM brands
// INNER JOIN models ON models.brand_id = brands.id
// INNER JOIN styles ON styles.model_id = models.id
// INNER JOIN shoes ON shoes.style_id = styles.id
// WHERE shoes.id <> :id
// AND styles.id =:id");
// $statement->bindValue(":id",$relatedSearch);
// $statement->execute();
// $relShoes = $statement->fetchAll();
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
// $statement = $conn->prepare("
// SELECT brands.brand,models.model,styles.style,shoes.name,shoes.description,shoes.image

// FROM brands
// INNER JOIN models ON models.brand_id = brands.id
// INNER JOIN styles ON styles.model_id = models.id
// INNER JOIN shoes ON shoes.style_id = styles.id

// WHERE models.model=:id AND shoes.name=:id");
// $statement->bindValue(':id',$relatedSearch);
// $statement->execute();
// $relShoes = $statement->fetchAll();
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
$conn=NULL;
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

<header>

		<a href="assign_postback.php"><button id="hvr-underline-from-center">sole search</button></a>
		<div id="headImg"></div>
		<div id="headImg"></div>
		<a href="assign_design.php"><button id="hvr-underline-from-center">design</button></a>

		<!-- <a href="details.php"><button>details</button></a> -->
</header>
<!-- https://www.weethet.nl/english/html_pagebacklink.php -->
<div id="backLink">
<a href="javascript:javascript:history.go(-1)"> &#60;-Search Results</a>
 </div>
 <?php
 // //simple validation to see if we found a shoe
	 if($shoes){
	//loop over the array of shoes and display the name
		foreach ($shoes as $shoe) {

	//Start of Results---
		echo "<div id=results>";

		// Image DIV//
		echo "<div id=resultsImg>";
	 	echo "<a href={$shoe['url']}><img src={$shoe['image']}></a>";
	 	echo "</div>";
	 	///////////////
	 	//Results Text//
		echo "<div id=resultsText>";
		//Headings//
		echo "<div id=resultsTitle>";
		//Brand//
	    echo "<div id=brand>";
	    echo "<h3>{$shoe['brand']}</h3>";

	    echo "</div>";
	    //Model//
		echo "<div id=model>";
		echo "<h3>{$shoe['model']}</h3></div>";
		//Style//
		echo "<div id=style><h3>{$shoe['style']}</h3></div>";
		echo "</div>";
		//Shoe Description//
		echo "<h3 id=title>{$shoe['name']}</h3>";
		echo "<div id=resultsDescription>";
		echo "<p>{$shoe['description']}</p></div>";
		echo "</div></div></div>";}
		///////////////
	 	//END of Results Text//



				}else{
		echo "<p>Couldn't find a shoe.</p>";
}

?>
<div id="relatedSearch">
<?php
if($relShoes){
	foreach($relShoes as $relShoe){
		echo "<div id=relatedImg>";
	 	echo "<a target=_blank href={$relShoe['url']}><img src={$relShoe['image']}></a>";
	 	echo "<p> {$relShoe['brand']}</p>";
	 	echo "<p> {$relShoe['model']}</p>";
	 	echo "<p> {$relShoe['style']}</p>";
	 	echo "<p> {$relShoe['name']}</p>";
	 	echo "</div>";}


}
?>
</div>
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
</html>
