
    SELECT 
        CONCAT(EM.fname, ' ', EM.lname) AS 'Employee',
        DATEPART(YEAR, EM.hire_date) AS 'Year Hired',
        DATEDIFF(YEAR, EM.hire_date, GETDATE()) AS 'Years Worked'
    FROM 
        dbo.employee AS EM
    WHERE
        DATEDIFF(YEAR, EM.hire_date,GETDATE()) > 29
    ORDER BY
        [Years Worked] DESC


SELECT TOP 3
    TI.title AS 'Title',
    ROUND(TI.ytd_sales / TI.price, 0) AS 'Qty Sold',
    TI.price AS 'Price',
    TI.ytd_sales 'YTD Sales',
    TI.price * (ROUND(TI.ytd_sales / TI.price, 0)) AS 'Revenue(year)'
FROM
    titles AS TI
ORDER BY
    'Qty Sold' DESC



SELECT TOP (3) 
    TI.title AS "Book Title:",
    TI.ytd_sales AS "Qty Sold:",
    TI.price AS "Selling Price:",
    TI.price * TI.ytd_sales AS "Revenue:"
FROM 
    dbo.titles as TI
ORDER BY
    TI.price * TI.ytd_sales DESC

SELECT
    (Em.fname + ' '+ EM.lname) AS 'Employee:',
    JO.job_desc AS 'Job Title',
    EM.hire_date AS 'Date Hired'
FROM 
    dbo.employee AS EM,
    dbo.jobs as JO
WHERE
    JO.job_desc = 'Publisher'
    OR 
    JO.job_desc = 'Editor'
    OR
    JO.job_desc = 'Designer'
ORDER BY
    JO.job_desc ASC


SELECT
    CONCAT(EM.fname, ' ', EM.lname) AS 'EMPLOYEE',
    JO.job_desc AS 'JOB TITLE',
    EM.hire_date AS 'YEAR HIRED'
FROM
    employee AS EM 
    JOIN jobs AS JO
    ON EM.job_id = JO.job_id 
ORDER BY 
    JO.job_desc ASC



SELECT
    CONCAT(EM.fname,' ', EM.lname) AS 'Employee',
    JO.job_desc AS 'Job Title',
    CONCAT(DATEPART(MONTH,EM.hire_date),', ', 
        DATEPART(DAY,EM.hire_date),', ', 
        DATEPART(year,EM.hire_date)) AS 'Hire Date: MDY'
FROM
    dbo.employee AS EM
    JOIN dbo.jobs AS JO
    ON JO.job_id = EM.job_id -- PK - FK
WHERE 
    JO.job_desc = 'Designer' 
    OR JO.job_desc = 'Publisher' 
    OR JO.job_desc = 'Editor'
ORDER  BY
    [Employee], [Job Title] ASC



SELECT
    CONCAT(EM.fname, ' ', EM.lname) AS 'Employee',
    JO.job_desc AS 'Job Description',
    DATEPART(YEAR, EM.hire_date) AS 'Year Hired'
FROM
    employee AS EM 
    JOIN jobs AS JO
    ON JO.job_id = EM.job_id
WHERE
    JO.job_desc IN('Editor', 'Publisher', 'Designer')
ORDER BY
    JO.job_desc ASC