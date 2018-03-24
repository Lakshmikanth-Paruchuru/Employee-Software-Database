#INSERTIONS

#employee table
insert into EMPLOYEE values('30','George');
insert into EMPLOYEE values('31','James');
insert into EMPLOYEE values('32','Erin');
insert into EMPLOYEE values('33','Kristin');



#softwarepack table

insert into SWARE_PACK values('1','QuickNumbers');
insert into SWARE_PACK values('2','Presenter');
insert into SWARE_PACK values('3','WordSmith');
insert into SWARE_PACK values('4','GraphixStudio');

#certifiedto table

insert into certified_to values('30','1');
insert into certified_to values('30','3');
insert into certified_to values('30','2');
insert into certified_to values('31','1');
insert into certified_to values('31','3');
insert into certified_to values('32','2');
insert into certified_to values('32','4');
insert into certified_to values('32','3');
insert into certified_to values('33','3');
insert into certified_to values('33','1');

#employee skills table

insert into EMPLOYEE_emp_skills values('Back-End','30' );
insert into EMPLOYEE_emp_skills values('Front-End','30' );
insert into EMPLOYEE_emp_skills values('Back-End','31');
insert into EMPLOYEE_emp_skills values('PC Maintenance','31');
insert into EMPLOYEE_emp_skills values('Front-End','32');
insert into EMPLOYEE_emp_skills values('Graphic Design','32');
insert into EMPLOYEE_emp_skills values('Database','33');
insert into EMPLOYEE_emp_skills values('PC Maintenance','33');

#COMPUTER table

insert into COMPUTER values('100',	'X200',	'Zenovo',	'30','31');
insert into COMPUTER values ('101',	'X200',	'Zenovo',	'31','31');
insert into COMPUTER values('102',	'Bartlett',	'Pear',	'32','33');
insert into COMPUTER values('103',	'SlimBook',	'TamTung',	'31','31');
insert into COMPUTER values('104',	'X500',	'Zenovo',	'30','31');

#install_to table

insert into install_to values('20111114','101','1');
insert into install_to values('20110314','101','2');
insert into install_to values('20110919','101','3');
insert into install_to values('20101122','102','1');
insert into install_to values('20120109','102','2');
insert into install_to values('20120111','102','3');
insert into install_to values('20120114','102','4');
insert into install_to values('20130222','103','1');
insert into install_to values('20101122','103','2');
insert into install_to values('20130222','103','3');
insert into install_to values('20110301','104','1');
insert into install_to values('20110313','104','2');
insert into install_to values('20120116','104','3');
insert into install_to values('20120218','104','4');






