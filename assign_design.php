
<!-- /*Sole Search Year 2 Web Progrmamming Assignment 1 -->

<!-- /*---___---___---___--_--*/
/*---___---___---___---___---*/
/* PHP*/
/*---___---___---___---___---*/
/*---___---___---___---___---*/ -->

<?php
try{
    $conn = new PDO('mysql:host=localhost;dbname=u1774692', 'u1774692', '10dec74');
    $conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch (PDOException $exception) 
{
	echo "Oh no, there was a problem" . $exception->getMessage();
}
//select all the Brands
$query = "SELECT * FROM brands";
$resultset = $conn->query($query);
$brands = $resultset->fetchAll();
//select all the Models
$queryModel = "SELECT * FROM models";
$resultsetModel = $conn->query($queryModel);
$models = $resultsetModel->fetchAll();
//select all the Styles
$queryStyles = "SELECT * FROM styles";
$resultsetStyle = $conn->query($queryStyles);
$styles = $resultsetStyle->fetchAll();
//select all the Shoes
$queryShoes = "SELECT * FROM shoes";
$resultsetShoes = $conn->query($queryShoes);
$details = $resultsetShoes->fetchAll();
?>
<!-- /*---___---___---___---___---*/
/*---___---___---___---___---*/
/* HTML*/
/*---___---___---___---___---*/
/*---___---___---___---___---*/ -->

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


<section id="diagram">
		<img src="images/sneakers_class_diagram.svg">   
</section>

<section id="tableGrid">

	<!-- /* Brands TABLE */ -->
<!-- <h1 id="tableGrid">Brands</h1> -->
<?php
// echo "<h1> Brands</h1>";
echo "<table id=brands>";

echo "<tr><th>id</th><th>Brands</th></tr>";
foreach ($brands as $brand){
	echo "<tr>";
	echo "<td id=lightO>{$brand['id']}</td>";
	echo "<td id=lgrey>{$brand['brand']}</td>";
	echo "<tr>";
}
echo "</table>";
// echo "<br>";
?>
<!-- </div> -->

<!-- /* Models TABLE */ -->
<!-- <div id="tableGrid"> -->
<?php
echo "<table id=models>";
// echo "<h1> Models</h1>";
echo "<tr><th>id</th><th>Models</th><th>Brand ID</th></tr>";
foreach ($models as $model){
	echo "<tr>";
	echo "<td id=lightO>{$model['id']}</td>";
	echo "<td id=lgrey>{$model['model']}</td>";
	echo "<td id=lgrey>{$model['brand_id']}</td>";
	echo "<tr>";
}
echo "</table>";
// echo "<br>";
?>
<!-- </div> -->
<!-- /* Styles TABLE */ -->
<!-- <div id="tableGrid"> -->
<?php
echo "<table id=styles>";
// echo "<h1> Styles</h1>";
echo "<tr><th>id</th><th>Styles</th><th>Model ID</th></tr>";
foreach ($styles as $style){
	echo "<tr>";
	echo "<td id=lightO>{$style['id']}</td>";
	echo "<td id=lgrey>{$style['style']}</td>";
	echo "<td id=lgrey>{$style['model_id']}</td>";
	echo "<tr>";
}
echo "</table>";
// echo "<br>";
?>
</section>
<!-- /* Styles TABLE */ -->
<!-- </div> -->
<!-- <section> -->
<?php
echo "<table id=shoes>";
// echo "<h1>Shoes</h1>";
echo "<tr><th>id</th><th>Style ID</th><th>Name</th><th>Description</th><th>Image</th></tr>";
foreach ($details as $detail){
	echo "<tr>";
	echo "<td id=lightO>{$detail['id']}</td>";
	echo "<td id=lgrey>{$detail['style_id']}</td>";
	echo "<td id=lgrey>{$detail['name']}</td>";
	echo "<td id=lgrey>{$detail['description']}</td>";
	echo "<td><img src={$detail['image']}></td>";
	echo "<tr>";
}
echo "</table>";
// echo "<br>";
?>

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
</html>