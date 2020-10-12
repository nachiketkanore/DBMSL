-- DATABASE EMP_DETAILS

-- 1 Create  & display  database   Called EMP_DETAILS . 
-- 2 Create table EMP( empId, empName, empSal, EmpDeptId)  &  
--      DEPT(deptId , deptName varchar(10) ,LOC varchar(10)) &  
--      Set  primary key to  deptId from DEPT relation  & forigian key to  EmpDeptId) 
-- 3 Describe table  EMP & DEPT.  

create table DEPT(
    deptId int, 
    deptName varchar(30),
    LOC varchar(10)
);

create table EMP (
    empId int NOT NULL AUTO_INCREMENT,
    empName varchar(20), 
    empSal int,
    empDeptId int,
    PRIMARY KEY(empId),
    FOREIGN KEY (empDeptId) REFERENCES DEPT(deptId)
);

-- desc DEPT;
-- desc EMP;


-- 4 Insert few records. & display records of EMP AND DEPT table. 
insert into DEPT values (1,"CS","Pune");
insert into DEPT values (2,"ENTC","Mumbai");
insert into DEPT values (3,"IT","Delhi");
insert into DEPT values (4,"Math","Punjab");

insert into EMP values(1111,"Nachi",30000,3);
insert into EMP values(2222,"Abhay",35000,1);
insert into EMP values(3333,"Kunal",10000,2);
insert into EMP values(4444,"Yash",40000,4);

select * from DEPT;
select * from EMP;


-- 5 Add column emp_joiningdate to EMP relation & describe EMP table. 

ALTER TABLE EMP
ADD emp_joiningdate date;

-- desc EMP;

-- 6 Change the datatype and size of column empsal from EMP  relation. 
ALTER TABLE EMP MODIFY empSal DECIMAL;
-- DESC EMP;

-- 7 Create view on DEPT table AS DEPT_VIEW   having all records and fields. 
CREATE VIEW DEPT_VIEW AS
SELECT *
FROM DEPT;
-- SELECT * FROM DEPT_VIEW;

-- 8 Create  view on EMP table  as emp_view   having empId,empName and emp_joiningdate with all records. 
CREATE VIEW EMP_VIEW AS
SELECT empId, empName, emp_joiningdate
FROM EMP;
-- SELECT * FROM EMP_VIEW;

-- 9 Update the empId to 100  having name 'ABC' of emp_view. 
UPDATE EMP_VIEW
SET empId = 100
WHERE empName = 'Nachi';
-- SELECT * FROM EMP_VIEW;

-- 10 Create index  IND1 on DEPT table on field deptName. And show Index. 
CREATE INDEX IND1
ON DEPT (deptName);
-- SHOW INDEX FROM DEPT;

-- 11 Create  Index on empName and empsal in EMP table and display index. 
CREATE INDEX IND2
ON EMP (empName, empSal);
-- SHOW INDEX FROM EMP;

-- 12 Drop view emp_view. 
DROP VIEW EMP_VIEW;

-- 13 Rename table EMP to Employee. 
RENAME TABLE `EMP` TO `Employee`;

-- 14 Truncate table Employee. (delete all entries)
TRUNCATE TABLE Employee;


