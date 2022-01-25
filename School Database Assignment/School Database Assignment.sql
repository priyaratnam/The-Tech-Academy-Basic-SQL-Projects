
SELECT 
    CONCAT(Class_ID, ', ', Class_Name) AS 'School:',
    Instructure_ID AS 'Class_ID:',
    CASE
        WHEN Student_ID LIKE '%Manag%' THEN 'Student ID'
        WHEN Student_Name LIKE '%Executive%' THEN 'Student Name'
		WHEN Instructor_ID LIKE '%Chief%' THEN ' Instructor_ID'
        WHEN Instructor_Name LIKE '%Chief%' THEN 'Instructor Name'
        ELSE 'Staff'
    END AS 'Worker Type:'
    
FROM
    Name AS EM
    JOIN class AS JO
    ON Class_Name = Class_ID

ORDER BY
    'ClassID Type:' DESC































--////////////////////
--//////////// NEW! //




-- INSERT INTO
INSERT INTO jobs
VALUES('Thief', 25, 180)












-- UPDATE - problem!
UPDATE jobs
SET job_desc = 'Best Janitor'
WHERE job_id = 15





SELECT * FROM jobs
WHERE job_id = 15