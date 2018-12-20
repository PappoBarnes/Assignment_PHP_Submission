/*---___---___---___---___---*/
/*---___---___---___---___---*/
/* Assignement SQL Queries*/
/*---___---___---___---___---*/
/*---___---___---___---___---*/ -->

/*Select all data from all tables*/

SELECT brands.brand AS Brand,models.model AS Model,styles.style AS Style, details.name, details.description, details.image AS Shoe 

FROM brands

INNER JOIN models
ON models.brand_id = brands.id

INNER JOIN styles 
ON styles.model_id = models.id

INNER JOIN details
on details.style_id = styles.id





SELECT brands.brand ,models.model ,styles.style, details.name, details.description, details.image 

FROM brands 
INNER JOIN models ON models.brand_id = brands.id 
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN details on details.style_id = styles.id

WHERE shoes.name="Sean Wotherspoon" 

/*Select all shoes by name and models*/

SELECT brands.brand, models.model, styles.style, shoes.name
FROM models
INNER JOIN models ON models.brand_id = brands.id 
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN shoes on shoes.style_id = styles.id

//////////////////*
SELECT * FROM brands
WHERE brands.brand LIKE :searchTerm
SELECT * FROM models
WHERE models.model LIKE :searchTerm
SELECT * FROM styles
WHERE styles.style LIKE :searchTerm
SELECT * FROM details
WHERE details.name LIKE :searchTerm

INNER JOIN models ON models.brand_id = brands.id 
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN details on details.style_id = styles.id

GROUP BY brands.brand

 ");
SELECT 
brands.brand,
models.model,
styles.style, 
details.name, 
details.description, 
details.image 

FROM brands
INNER JOIN models ON models.brand_id = brands.id 
INNER JOIN styles ON styles.model_id = models.id 
INNER JOIN details on details.style_id = styles.id 
WHERE details.name LIKE ''");

 SELECT brands.brand AS Brand,models.model AS Model,styles.style AS Style, details.name, details.description, details.image AS Shoe 

FROM brands

INNER JOIN models
ON models.brand_id = brands.id

INNER JOIN styles 
ON styles.model_id = models.id

INNER JOIN details
on details.style_id = styles.id

WHERE brands.brand LIKE '%adidas%';