SELECT brands.brand,models.model,styles.style,details.name,details.description,details.image

FROM brands
INNER JOIN models ON models.brand_id = brands.id
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN details ON details.style_id = styles.id

WHERE details.name LIKE :searchTerm


SELECT * FROM details

WHERE details.name Like 'Travis Scott'


<?php
 if($shoes){
	foreach ($shoes as $shoe) 
	// loop over the array shoes
		// echo "<div>";
	 
	    echo "<a href='details.php?id={$shoe['name']}'>";
	    echo "{$shoe['name']}";
	    echo "</a>";
	    
	    // echo "</p>";
	    // echo "</div>";

	 //    echo "<div>";
	 //    echo "<a href='details.php?id={$shoe['image']}'>";
		// echo "<img src={$shoe['image']}>";
		// echo "{$shoe['description']}";
	 //    echo "</a>";
	 //    echo "</div>";
	   
	}else{

		echo "No Records for that shoe";
	}
?>	
/*<?php
 if($shoes){
	foreach ($shoes as $shoe) 
	// loop over the array shoes
		echo "<div>";
	    echo "<p>";
	    echo "<a href='details.php?id={$shoe['name']}'>";
	    echo "{$shoe['name']}";
		echo "<img src={$shoe['image']}>";
		echo "{$shoe['description']}";
		echo "</a>";
	    echo "</p>";
	    echo "</div>";
	}else{

		echo "No Records for that shoe";
	}
?> */