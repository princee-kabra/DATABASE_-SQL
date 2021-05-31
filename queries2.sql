--Ql: Retrieve the name and address of all employees who work for the 'Research' department.*/
SELECT fname,lname,address
FROM pcomp.Employee, pcomp.dept
WHERE dept.dname='Research' AND dept.dnum=Employee.dno;


--Q2: For every project located in 'Stafford', list the project number, the controlling department number, and the department manager's last name, address, and birthdate.*/
SELECT pno, dnum, Lname, address, bdate
FROM pcomp.proj, pcomp.Employee, pcomp.dept
WHERE dnum=dno AND MANAGERSSN=ssn AND ploc='Stafford';

--Q3: For each employee, retrieve the employee's first and last name and the first and last name of his or her immediate supervisor.*/
SELECT E.Fname, E.Lname, S.Fname, S.Lname
FROM princee.Employee AS E, princee.Employee AS S
WHERE E.SuperSSN=S.ssn;


--Q4: Select all EMPLOYEE SSN*/
SELECT ssn
FROM pcomp.Employee

--Q5: Select all combinations of EMPLOYEE SSN and DEPARTMENT DNAME*/
SELECT ssn,dname
FROM pcomp.Employee, pcomp.dept;

--Q6: retrieves all the attribute values of any EMPLOYEE who works in DEPARTMENT number 5.*/
SELECT *
FROM princee.Employee
WHERE dno=5;

--Q7: retrieves all the attributes of an EMPLOYEE and the attributes of the DEPARTMENTin which he or she works for every employee of the 'Research' department.*/
SELECT *
FROM pcomp.Employee, pcomp.dept
WHERE dname='Research' AND dno=dnum;

--Q8: Retrieve the salary of every employee.*/
SELECT ALL salary
FROM princee.Employee;

--Q9: Retrieve the all distinct salary values.*/
SELECT DISTINCT SALARY
FROM pcomp.Employee;

--Q10: Make a list of all project numbers for projects that involve an employee whose lastname is 'Smith', either as a worker or as a manager of the department that controlsthe project.*/
SELECT DISTINCT pno
FROM pcomp.proj
WHERE pno in(SELECT pno
			 FROM pcomp.proj,pcomp.dept,pcomp.Employee
			WHERE dept.dnum=Employee.dno OR dept.managerssn=employee.ssn OR Employee.lname='Smith')

/*Q11: Retrieve all employees whose address is in Houston, Texas.*/
SELECT Fname, Lname
FROM princee.Employee
WHERE address LIKE '%Houston,TX%';

/*Retrieve a list of employees and the projects they are working on, ordered by department and, within 
each department, ordered alphabetically by last name, first name.*/
SELECT dname,lname,fname,pname
FROM princee.dept, princee.employee,princee.works_on, princee.proj
WHERE dept.dnum=employee.dno AND employee.ssn=works_on.essn AND works_on.pno=proj.pno

--Retrieve the names of all employees who do not have supervisors.
--SELECT fname,lname
--FROM pcomp.employee
--WHERE employee.superssn is NULL

--Retrieve the name of each employee who has a dependent with the same first name and same gender in employee.
SELECT e.fname ,e.lname
FROM princee.employee as e
WHERE e.SSN IN (SELECT essn 
FROM princee.dependent
WHERE e.fname=depname
AND e.gender=gender);
--Retrieve the names of employees who have no dependents.
SELECT fname,lname
FROM pcomp.employee
WHERE NOT EXISTS(SELECT *
				 FROM pcomp.dependent
				 WHERE employee.ssn=dependent.essn);
--List the names of managers who have at least one dependent.
SELECT fname,lname
FROM pcomp.employee
WHERE EXISTS(SELECT *
		     FROM pcomp.dependent
		     WHERE employee.ssn=dependent.essn)
			 AND
			 EXISTS(SELECT *
		     FROM pcomp.dept
		     WHERE employee.ssn=dept.managerssn);
			 




--Retrieve the social security numbers of all employees who work on project numbers 1,2,3
--SELECT DISTINCT essn
--FROM pcomp.works_on
--WHERE works_on.pno IN (1, 2, 3)

--Find the sum of the salaries of all employees, the maximum salary, the minimum salary, and the average salary.
SELECT SUM (SALARY), MAX (SALARY), MIN (SALARY),AVG (SALARY)
FROM princee.employee

--Findthe sum of the salaries of all employees of the 'Research' department, as well asthe maximum salary, the minimum salary, and the average salary in this department
SELECT SUM (SALARY), MAX (SALARY), MIN (SALARY),AVG (SALARY)
FROM (pcomp.employee JOIN pcomp.dept ON employee.dno=dept.dnum)
WHERE dept.dname='Research';


--Retrieve the total number of employees in the company
--SELECT COUNT(*)
--FROM pcomp.employee

--Retrieve the total number of employees in the 'Research' department
--SELECT COUNT(*)
--FROM pcomp.employee,pcomp.dept
--WHERE employee.dno=dept.dnum AND dept.dname='Research'

--Count the number of distinct salary values in the database.
--SELECT COUNT (DISTINCT employee.salary)
--FROM pcomp.employee

--For each department, retrieve the department number, the number of employees in  the department, and their average salary.
--SELECT dno,COUNT(*),AVG(salary)
--FROM pcomp.employee
--GROUP BY employee.dno

--Foreach project on whichmore chan two employees work, retrieve the project number,the project name, and the number of employees who work on the project.
SELECT pno,pname,COUNT(*)
FROM pcomp.proj,pcomp.works_on
WHERE proj.pno=works_on.pno
GROUP BY  proj.pno,proj.pname
HAVING COUNT (*) > 2;

--Foreach department that has more than five employees, retrieve the department number and the number of its employees who are making more than $40,000.
SELECT dnum,COUNT(*)
FROM pcomp.dept,pcomp.employee
WHERE dept.dnum=employee.dno AND employee.salary>4000 AND
      employee.dno in(SELECT dno
					  FROM employee
					 GROUP BY dno
					 HAVING COUNT(*)>5)
GROUP BY dept.dnum;








SELECT Fname, Lname
FROM pcomp.Employee
WHERE bdate LIKE '__ 5 ';





