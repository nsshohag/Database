  CREATE TABLE Student(
  Reg_No Int PRIMARY KEY,
  S_Name VARCHAR(30),
  Dept VARCHAR(3), 
  CGPA DECIMAL (3,2)
  );
  
  INSERT INTO Student VALUES(101,"A","CSE",3.25);
  INSERT INTO Student VALUES(105,"B","EEE",3.8);
  INSERT INTO Student VALUES(110,"A","SWE",3.7);
  INSERT INTO Student VALUES(115,"C","CSE",3.5);
  INSERT INTO Student VALUES(123,"D","EEE",3.7);
  INSERT INTO Student VALUES(127,"B","CSE",3.6);
  
  CREATE TABLE Stu_Org(
  Reg_No Int,
  Org VARCHAR(30)
  );
  INSERT INTO Stu_Org VALUES(105,"KIN");
  INSERT INTO Stu_Org VALUES(101,"RIM");
  INSERT INTO Stu_Org VALUES(105,"RIM");
  INSERT INTO Stu_Org VALUES(127,"KIN");
  INSERT INTO Stu_Org VALUES(127,"SSA");
  
  -- CREATE TABLE Demo AS SELECT *FROM Student;
  -- SELECT *FROM Demo;
  -- SELECT *FROM Stu_Org;
  SELECT UPPER("CGPA of CSE Student") As IDK;
  -- LOWEST CGPA OF CSE DEPT
  SELECT Reg_No FROM Student WHERE CGPA IN(SELECT MIN(CGPA) FROM Student WHERE Dept="CSE") AND Dept="CSE";
  
  -- LOWEST CGPA OF CSE DEPT GUY AND HIS ADMITTED ORG
  SELECT Reg_No,Org FROM Stu_Org WHERE Reg_No IN(
  SELECT Reg_No FROM Student WHERE CGPA IN(SELECT MIN(CGPA) FROM Student WHERE Dept="CSE") AND Dept="CSE");
  
  -- LOWEST CGPA GUY OF EVERY DEPT
  SELECT MIN(Reg_No) FROM Student GROUP BY Dept;
  
  -- COPYING EVERY LOWEST CGPA GUY OF EVERY DEPT
  CREATE TABLE Temporary AS SELECT MIN(Reg_No) FROM Student GROUP BY Dept;
  
  -- DELETING EVERY DATA WITHOUT LOWEST CGPA GUY OF EVERY DEPT
  DELETE FROM Student WHERE Reg_No NOT IN(SELECT *FROM Temporary);
  
  -- AFTER DELETION NOW CHECK THE TABLE HAVING LOWEST CGPA OF EVERY DEPT
  SELECT *FROM Student;