Select *
FROM EMPLOYEE, DEPARTMENT
WHERE EMPLOYEE.Super_ssn = DEPARTMENT.Mgr_ssn;

Select *
FROM EMPLOYEE
WHERE SSn IN (	Select workhours.Essn as Essn
		From (	Select Essn, sum(Hours) as hours
			From WORKS_ON
			Group By Essn ) as workhours
		WHERE workhours.hours < 40);
