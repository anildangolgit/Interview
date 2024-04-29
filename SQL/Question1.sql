-- CREAT TABLE SCRIPTS

CREATE TABLE IF NOT EXISTS CUSTOMER
(
    Customer_ID      VARCHAR(20) 
  , Customer_Name    VARCHAR(250)
  , Customer_City    VARCHAR(100)
  , Customer_DOB     DATE
  , Customer_Pin_Code VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS CUSTOMER_TERRITORY
(
    Customer_ID      VARCHAR(20) 
  , TERRITORY_ID    VARCHAR(250)
  , Customer_City    VARCHAR(100)
  , Customer_Pin_Code VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS MAP_EMPLOYEE_TERRITORY
(
    Employee_ID      VARCHAR(20) 
  , Territory_ID    VARCHAR(250)
  , Product_SubCategory VARCHAR(250) 
);


--INSERT SCRIPTS

INSERT INTO CUSTOMER VALUES
        ('CUSTOMER1','Lindy','SanJose',TO_DATE('1988-02-24', 'YYYY-MM-DD'), '94088'),
        ('CUSTOMER2','Madison','Atlanta',TO_DATE('1984-05-28', 'YYYY-MM-DD'),30305),
  ('CUSTOMER3','Kiara','Austin',TO_DATE('1989-04-19', 'YYYY-MM-DD'),73301),
  ('CUSTOMER4','Beth','Ohio',TO_DATE('1992-08-18', 'YYYY-MM-DD'),43123)
  ('CUSTOMER5','Beth','SanAntonio',TO_DATE('1992-08-18', 'YYYY-MM-DD'),73504),
  ('CUSTOMER6','Beth','LasVegas',TO_DATE('1992-08-18', 'YYYY-MM-DD'),95403),
  ('CUSTOMER7','Lindy','LosAngeles',TO_DATE('1987-07-12', 'YYYY-MM-DD'),73504);

INSERT INTO CUSTOMER_TERRITORY VALUES
        ('CUSTOMER1','CA','SanJose', '94088'),
  ('CUSTOMER2','AZ','Atlanta','30305'),
  ('CUSTOMER3','UT','Austin','73301'),
  ('CUSTOMER4','OH','Ohio','43123'),
    ('CUSTOMER5','AZ','Phoenix', '85027'),
  ('CUSTOMER6','NV','LasVegas','95024');

INSERT INTO MAP_EMPLOYEE_TERRITORY VALUES
        ('EMP1','AZ', 'CLOTHES'),
  ('EMP2','CA', 'MENSWEAR'),
  ('EMP3','MA', 'WOMENWEAR'),
  ('EMP4','NM', 'ACCESSORIES'),
     ('EMP5','CA', 'JEWELERY'),
     ('EMP6','UT', 'KIDS');

--SELECT QUERIES

--QN1 - Write a Query to display those customer names and their occurrences when customer names appears more then once

select customer_name, count(*) as Occurrences
From Customer
group by customer_name
having Count(*) Greater Then 1 ( put greater then sign here)

--QN2 - Write a Query to get the employees who are responsible for maximum number of customers

select employee_id FROM
(
Select employee_id,
count(customer_id) as count_customers,
RANK () OVER(order by count(customer_id) desc ) AS rank_number,
ROW_NUMBER() OVER (order by count(customer_id) desc ) AS row_num
FROM
 customer_territory C,
 map_employee_territory E
 WHERE C.TERRITORY_ID = E.TERRITORY_ID
 GROUP BY employee_id
) X
where x.rank_number = 1

-- QN3 - Write a Query to get those employees having no customers

Select 
E. EMPLOYEE_ID 
FROM map_employee_territory E
WHERE E.TERRITORY_ID NOT IN (SELECT C.TERRITORY_ID  FROM customer_territory C)