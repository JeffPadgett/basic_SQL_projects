
SELECT * FROM tbl_species
SELECT * FROM tbl_specialist
SELECT * FROM tbl_care



SELECT species_name, specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist
INNER JOIN tbl_care ON tbl_specialist.specialist_id = care_specialist
INNER JOIN tbl_species ON care_id = species_care
WHERE species_name = 'penguin';

SELECT * 