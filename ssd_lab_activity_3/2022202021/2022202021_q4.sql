Select Dnumber, Dname, numofloc
FROM
	(SELECT DEPARTMENT.*, numofloc
	FROM 
		(SELECT Dnumber, count(*) as numofloc
		FROM DEPT_LOCATIONS
		GROUP BY Dnumber) T1
	INNER JOIN DEPARTMENT
	WHERE DEPARTMENT.Dnumber = T1.Dnumber) as MgrT
WHERE 	(SELECT count(*)
	 FROM DEPENDENT
	 WHERE MgrT.Mgr_ssn = DEPENDENT.Essn and DEPENDENT.Sex ='F') >= 2;
