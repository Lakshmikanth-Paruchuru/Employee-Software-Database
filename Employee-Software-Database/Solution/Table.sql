


Create database company;

CREATE TABLE EMPLOYEE
(
  Emp_ID varchar(20) NOT NULL,
  emp_name char(30) NOT NULL,
  PRIMARY KEY (Emp_ID)
);

CREATE TABLE SWARE_PACK
(
  SPack_ID varchar(20) NOT NULL,
  SPackName char(30) NOT NULL,
  PRIMARY KEY (SPack_ID)
);

CREATE TABLE certified_to
(
  Emp_ID varchar(20) NOT NULL,
  SPack_ID varchar(20) NOT NULL,
  PRIMARY KEY (Emp_ID, SPack_ID),
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID),
  FOREIGN KEY (SPack_ID) REFERENCES SWARE_PACK(SPack_ID)
);

CREATE TABLE EMPLOYEE_emp_skills
(
  emp_skills char(30) NOT NULL,
  Emp_ID varchar(20) NOT NULL,
  PRIMARY KEY (emp_skills, Emp_ID),
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

CREATE TABLE COMPUTER
(
  comp_ID varchar(20) NOT NULL,
  Comp_Make char(30) NOT NULL,
  Comp_Model char(30) NOT NULL,
  Emp_ID varchar(20) NOT NULL,
  maintainedEmp_ID varchar(20) NOT NULL,
  PRIMARY KEY (comp_ID),
  FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID),
  FOREIGN KEY (maintainedEmp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

CREATE TABLE install_to
(
  Date_Of_Inst date NOT NULL,
  comp_ID varchar(20) NOT NULL,
  SPack_ID varchar(20) NOT NULL,
  PRIMARY KEY (comp_ID, SPack_ID),
  FOREIGN KEY (comp_ID) REFERENCES COMPUTER(comp_ID),
  FOREIGN KEY (SPack_ID) REFERENCES SWARE_PACK(SPack_ID)
);
