--INSERT INTO pcomp.Employee(
--	Fname, Mname, Lname, ssn, bdate, address, gender, salary, superssn, dno)
--	VALUES ('John', 'B', 'Smith', 123456789, '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, null, null);
--	VALUES ('Franklin','T', 'Wong', 333445555, '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, null, null);
--	VALUES ('Alicia', 'J', 'Zelaya', 999887777, '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, null, null);
--	VALUES ('Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire,TX', 'F', 43000, null, null);
--	VALUES ('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, null, null);
--	VALUES ('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000 ,null ,null);
--	VALUES ('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, null, null);
--	VALUES ('James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, null, null);

--INSERT INTO pcomp.dept(
--	dnum, MANAGERSSN, Managersdate, dname)
--	VALUES (5, 333445555, '1988-05-22','Research');
--	VALUES (4, 987654321, '1995-01-01', 'Administration');
--	VALUES (1, 888665555, '1981-06-19', 'Headquarters');

--INSERT INTO pcomp.dloc(
--	dloc, dnumber)
--	VALUES ('Houston', 1);
--	VALUES ('Stafford',4);
--	VALUES ('Bellaire',5);
--	VALUES ('SugarLand', 5);
--	VALUES ('Houston', 4);

--INSERT INTO pcomp.proj(
--	pno, pname, ploc, pdno)
--	VALUES (1,'ProductX', 'Bellaire', 5);
--	VALUES (2 , 'ProductY', 'Sugarland', 5);
--	VALUES (3, 'ProductZ', 'Houston', 5);
--	VALUES (10,'Computerization', 'Stafford', 4);
--	VALUES (20,'Reorganization', 'Houston', 1);
--	VALUES (30, 'Newbenefits', 'Stafford', 4);

--INSERT INTO pcomp.works_on(
--	PNO, ESSN, hours)
--	VALUES (1, 123456789, 32.5);
--	VALUES (2, 123456789, 7.5);
--	VALUES (3, 666884444, 40.0);
--	VALUES (1, 453453453, 20.0);
--	VALUES (2, 453453453, 20.0);
--	VALUES (2, 333445555, 10.0);
--	VALUES (3, 333445555, 10.0);
--	VALUES (10, 333445555, 10.0);
--	VALUES (20, 333445555,10.0);
--	VALUES (30, 999887777, 30.0);
--	VALUES (10, 999887777, 10.0);
--	VALUES (10, 987987987, 35.0);
--	VALUES (30, 987987987, 5.0);
--	VALUES (30, 987654321, 20.0);
--	VALUES (20, 987654321, 15.0);
--	VALUES (20, 888665555, null);

--INSERT INTO pcomp.Dependent(
--	ESSN, Depname, Relation, Bdate, Gender)
--	VALUES (333445555, 'Alice', 'DAUGHTER', '1986-04-05', 'F');
--	VALUES (333445555, 'Theodore', 'SON', '1983-10-25', 'M');
--	VALUES (333445555, 'Joy', 'SPOUSE','1958-05-03', 'F');
--	VALUES (987654321, 'Abner', 'SPOUSE', '1942-02-28','M');
--	VALUES (123456789, 'Michael', 'SON' ,'1988-01-04', 'M');
--	VALUES (123456789, 'Alice', 'DAUGHTER', '1988-12-30', 'F');
--	VALUES (123456789, 'Elizabeth', 'SPOUSE', '1967-05-05', 'F');