Select CONCAT(Fname, " ",Minit," ", Lname) as FullName , Ssn as ssn, Dno as DeptId, Dname as DeptName, NumOfEmp
FROM	(SELECT Fname, Minit, Lname, Ssn, Dno, NumOfEmp
	FROM 	(SELECT Super_ssn as MgrId, count(*) as NumOfEmp
		FROM (Select * from EMPLOYEE where Super_ssn is NOT NULL) as Emp
		GROUP BY Super_ssn) as Mgr
	INNER JOIN EMPLOYEE as Emp
	ON Emp.Ssn = MgrId) as ManagerT
INNER JOIN DEPARTMENT
ON ManagerT.Dno = DEPARTMENT.Dnumber
ORDER BY NumOfEmp ASC;
