create database global_bank ;
select * from bank_data ; 
describe bank_data ;
describe customer_details ;
describe customer_finance ;

-- creating cusomer table with basic details 
create table customer_details
as select id,customerid,surname,geography,gender,age 
from bank_data;

select* from customer_details ;

-- creating table customer_finance ;
create table customer_finance
 as select id, creditscore,tenure,balance,numofproducts,hascrcard,
 isactivemember,estimatedsalary,exited
 from bank_data;
 
 select * from customer_finance ;
 
 alter table customer_details
 add primary key (id) ,
 rename column customerid to customer_id ,
 rename column geography to country ; 
 
 alter table customer_finance 
 rename column creditscore to credit_score,
 rename column numofproducts to product_count,
 rename column hascrcard to credit_card,
 rename column isactivemember to is_active,
 rename column estimatedsalary to estimated_salary ,
 rename column exited to churn_status
 ;
 alter table customer_finance
 modify column churn_status varchar(50),
 modify column is_active varchar(50) ; 
 
 -- putting case (if) for changing 0,1 to answers ; 
 update customer_finance 
 set churn_status  = case 
 when churn_status=1 then "churned "
 else "active" 
 end ;
 
 set sql_safe_updates = 1;
 update customer_finance
 set is_active= case
 when is_active=1 then "active"
 else "inactive"
 end
 ;
 -- adding foreign key ;
 alter table customer_finance 
 add constraint fk_bank_id
 foreign key (id) references customer_details(id) ; 
 -- inner join on tables ;
 SELECT 
    c.surname, 
    c.country, 
    f.balance, 
    f.churn_status
FROM customer_details AS c
INNER JOIN customer_finance AS f 
    ON c.id = f.id;
    
    
 
 -- making view now 
 create view master_churn
 as select c.id ,
 c.customer_id,
 c.surname,
 c.country,
 c.gender,
 c.age, 
 c.join_date,
 f.credit_score,
 f.tenure,
 f.balance,
 f.product_count,
 f.credit_card,
 f.is_active,
 f.estimated_Salary,
 f.churn_status 
 from customer_details c join customer_finance f 
 on c.id=f.id ; 
 select* from master_churn limit 10;
 -- join and add new column ;
 alter table customer_details
 add column join_date date ; 
 
 UPDATE customer_details c
JOIN customer_finance f ON c.id = f.id
SET c.join_date = DATE_SUB('2026-01-01', INTERVAL f.tenure YEAR);
 
 
 
 
 
 
 





