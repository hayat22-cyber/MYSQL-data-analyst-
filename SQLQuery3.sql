--intserting data--

--INSERT INTO EmployeeDemoGraphics
--VALUES
--(1002, 'mizbah', 'farooqui', 20, 'female'),
--(1003, 'zeeshan', 'ali', 23, 'male'),
--(1004, 'ayaan', 'khan', 22, 'male');


--INSERT INTO EmployeeSalary
--VALUES
--(1001, 'data analyst', 55000),
--(1002, 'developer', 28000),
--(1003, 'cleaner', 20000),
--(1004, 'clerk', 10000);


--where statement--

--SELECT *
--From EmployeeDemoGraphics
--WHERE 



--group by or order by--



--SELECT Gender, Age , Count(Gender) AS countgender
--FROM EmployeeDemoGraphics
--WHERE Age >20
--GROUP BY Gender , Age
--Order BY Gender DESC




-- inner joins , full/left/right/ outer joins (master mode)--

--select*
--FROM  MYSQL.dbo.EmployeeDemoGraphics

--select* 
--FROM MYSQL.dbo.EmployeeSalary


--SELECT   Jobtitle,  AVG(Salary)
--FROM MYSQL.dbo.EmployeeDemoGraphics
--inner join MYSQL.dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'cleaner'
--Group by JobTitle


--case statement--

--SELECT Firstname, Lastname, Age,
--       CASE
--           WHEN Age > 20 THEN 'ADULT'
--           ELSE 'YOUNG'
--       END AS AgeCategory
--FROM MYSQL.dbo.EmployeeDemoGraphics
--WHERE Age IS NOT NULL
--ORDER BY Age;


--SELECT Firstname,Lastname,JobTitle,Salary,
--Case 
--	WHEN JobTitle = 'cleaner' THEN Salary + (SALARY* .10)
--	WHEN JobTitle = 'data analyst' THEN SALARY + (SALARY* .20)
--	ELSE SALARY+ (SALARY*.02)
--	END AS SalaryAfterRaise
--FROM MYSQL.dbo.EmployeeDemoGraphics
--JOIN MYSQL.dbo.EmployeeSalary
--	ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID








--updation and deletion of data---

--select* 
--FROM MYSQL.dbo.EmployeeSalary

--UPDATE MYSQL.dbo.EmployeeDemoGraphics
--SET Age= 20 
--Where EmployeeID = 1001


--DELETE FROM MYSQL.dbo.EmployeeDemoGraphics
--WHERE EmployeeID = 1001




--partitions--

--SELECT Firstname, lastname, Gender ,Salary,
--COUNT (Gender) OVER (PARTITION BY Gender) as TotalGender
--From MYSQL..EmployeeDemoGraphics dem
--JOIN MYSQL..EmployeeSalary sal
--ON dem.EmployeeID = sal.EmployeeID


--SELECT Firstname, lastname, Gender ,Salary,
--COUNT (Gender) 
--From MYSQL..EmployeeDemoGraphics dem
--JOIN MYSQL..EmployeeSalary sal
--ON dem.EmployeeID = sal.EmployeeID
--GROUP BY  Firstname, lastname, Gender ,Salary




--cte--


--WITH CTE_Employee as
--(SELECT Firstname, lastname, Gender , Salary,
--count (Gender) OVER(Partition by gender) as totalgender, 
--AVG(salary) OVER(PARTITION BY GENDER) as avgsalary
--FROM MYSQL..EmployeeDemoGraphics emp
--JOIN MYSQL..EmployeeSalary sal
--ON emp.EmployeeID= sal.EmployeeID
--	WHERE SALARY > '45000'
--	)
--	select Firstname , AVG
--	FROM CTE_Employee







--stored procedures--

--CREATE PROCEDURE TEST
--AS
--SELECT *
--FROM EmployeeDemographics;
--GO

--EXEC TEST;
--GO

--CREATE PROCEDURE Temp_Employee
--AS
--CREATE TABLE #temp_employee (
--    JobTitle varchar(100),
--    EmployeesPerJob int, 
--    AvgAge int,
--    AvgSalary int
--);

--INSERT INTO #temp_employee
--SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
--FROM MYSQL..EmployeeDemoGraphics emp
--JOIN MYSQL..EmployeeSalary sal
--    ON emp.EmployeeID = sal.EmployeeID
--GROUP BY JobTitle;

--SELECT *
--FROM #temp_employee;
--GO


--EXEC Temp_Employee



