  
SELECT *
FROM	(SELECT Dnumber, count(*) as numofloc
	FROM DEPT_LOCATIONS
	GROUP BY Dnumber
	HAVING count(*) >= 2) as DeptCountT
INNER JOIN DEPARTMENT
ON DEPARTMENT.Dnumber =  DeptCountT.Dnumber



