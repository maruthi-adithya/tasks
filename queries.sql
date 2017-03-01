/*Choosing restaurants and its suppliers based on inner join of restaurants and suppliers.*/
SELECT restaurants.rest_name, suppliers.name  FROM restaurants INNER JOIN suppliers ON restaurants.rest_id=suppliers.id;
/*Choosing restaurants and its suppliers based on left join of restaurants and suppliers.*/
SELECT restaurants.rest_id,restaurants.rest_name, suppliers.name  FROM restaurants LEFT JOIN suppliers ON restaurants.rest_id=suppliers.id;
/*Choosing restaurants and its suppliers based on left join of restaurants and suppliers.*/
SELECT restaurants.rest_name,restaurants.rating, suppliers.name  FROM restaurants RIGHT JOIN suppliers ON restaurants.rest_id=suppliers.id;
/*Choosing restaurants and its suppliers based on full outer join of restaurants and suppliers.*/
SELECT restaurants.rest_id,restaurants.rest_name, suppliers.name  FROM restaurants LEFT JOIN suppliers ON restaurants.rest_id=suppliers.id
UNION ALL SELECT restaurants.rest_name,restaurants.rating, suppliers.name  FROM restaurants RIGHT JOIN suppliers ON restaurants.rest_id=suppliers.id;
/*Choosing restaurants and its suppliers based on union of restaurants and suppliers.*/
SELECT rest_id,rest_name,res_city from restaurants where rating>3 union select * from suppliers where id >100;
/*Choosing restaurants and its suppliers based on rating of restaurants using self join*/
SELECT  a.rest_id, b.rest_name, a.rating FROM restaurants a, restaurants b WHERE a.rating < b.rating;
/*Choosing restaurants and its suppliers based on cartesian join of restaurants and suppliers.*/
SELECT  id,rest_id,name,rest_name,res_city FROM restaurants,suppliers;
/*Choosing restaurants and its suppliers based on aliases of restaurants and suppliers.*/
SELECT a.rest_id, a.rest_name, a.rating, b.name FROM restaurants AS a, suppliers AS b WHERE  a.rest_id = b.id;
/*Choosing restaurants based on their ratings */
SELECT  rating,rest_name FROM restaurants ORDER BY rating DESC ;
/*Choosing restaurants based on manual priorities */
SELECT * FROM restaurants ORDER BY (CASE ADDRESS  WHEN 'chennai' 	 THEN 1 WHEN 'hyderabad' 	 THEN 2  WHEN 'gujarat' 	 THEN 3
ELSE 100 END) ASC, ADDRESS DESC;
/*Choosing restaurants based on SELECT subqueries  */
SELECT *  FROM restaurants  WHERE rest_id IN (SELECT id FROM suppliers  WHERE id > 100) ;
/*Choosing restaurants based on UPDATE subqueries  */
UPDATE restaurants SET rest_id = rest_id + 50 WHERE rest_id IN (SELECT id FROM suppliers WHERE id >= 100 );
/*Choosing restaurants based ON LIKE priorities- starting with che  */
SELECT * FROM restaurants WHERE res_city LIKE 'CHE%' AND RATING>=4;
/*Choosing restaurants based ON LIKE priorities- 2nd letter y and ending with a d  */
SELECT * FROM restaurants WHERE res_city LIKE '_y%d' AND RATING>4;

select * from restaurants where res_city NOT IN (select city from suppliers); 
