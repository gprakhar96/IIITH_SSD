Select Essn as 'Manager ssn', count(distinct Pno) as 'Number of projects'
FROM WORKS_ON
WHERE Essn IN
	(SELECT Mgr_ssn
	FROM	(SELECT Dnum
		FROM PROJECT 
		WHERE Pname = 'ProductY') as relDept
		INNER JOIN DEPARTMENT
		ON Dnum = Dnumber);

