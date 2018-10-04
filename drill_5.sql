select * from tbl_species
select * from tbl_nutrition

SELECT species_name AS 'Species Name:', nutrition_type AS 'Nutrition Type: '
FROM tbl_species t1
INNER JOIN tbl_nutrition t2 ON t2.nutrition_id = t1.species_nutrition

