#Queries

#Scenario1
create view No_Of_installations AS
select sware_pack.SPackName,sware_pack.SPack_ID,count(install_to.SPack_ID)
from install_to,sware_pack
where install_to.SPack_ID=sware_pack.SPack_ID
group by sware_pack.SPack_ID;


#Scenario2
select certified_to.Emp_ID, employee.emp_name
from  certified_to
join sware_pack on sware_pack.SPack_ID=certified_to.SPack_ID join employee on certified_to.Emp_ID=employee.Emp_ID
where sware_pack.SPackName='GraphixStudio';

#Scenario3

select distinct(es.emp_skills),swp.SPackName
from employee_emp_skills es,sware_pack swp,certified_to ct
where es.Emp_ID=ct.Emp_ID AND ct.SPack_ID=swp.SPack_ID
order by es.emp_skills;

#Scenario4

select c.comp_ID,c.Comp_Make, c.Comp_Model, e.emp_name, e.emp_ID
from employee e , computer c left outer join install_to on c.comp_ID= install_to.comp_ID
where SPack_ID is NULL AND c.Emp_ID=e.Emp_ID;


#Scenario5

select sware_pack.SPack_ID, sware_pack.SPackName
from sware_pack
where SPack_ID in (select SPack_ID from certified_to group by SPack_ID having count(SPack_ID)<2);