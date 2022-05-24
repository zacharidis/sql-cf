/** 10 ερωτηματα για εξαγωγη χρησιμων πληροφοριων απο την βαση bikerstore */

/* ΕΡΩΤΗΜΑ 1 
   ολα τα διαθεσιμα αποθεματα μας */
   
   SELECT DISTINCT(BRAND_NAME) AS "MANUFACTURER NAME" FROM PRODUCTION.brands 
   ORDER BY BRAND_NAME ASC 


   /*EROTIMA 2
    OLA TA APOTHEMATA MAS ANA PROION KAI ANA KATASTIMA APO TO MEGALYTERO STO MIKROTERO
     */

	SELECT DISTINCT(production.stocks.store_id) ,(production.stocks.product_id) ,production.stocks.quantity  FROM production.stocks
	ORDER BY PRODUCTION.stocks.quantity DESC


	/* ΕΡΩΤΗΜΑ 3ο 
να εμφανιστουν τα προιοντα μας απο το παλαιοτερο στο νεοτερο  */ 

SELECT distinct production.products.product_name , production.products.model_year
from production.products ,sales.orders  
order by model_year asc
   
   /** erotima 4o 
   na emfanistoun ta proionta mas apo to akrivotero sto fthinotero 

   */

   SELECT distinct production.products.product_name as "Onoma Proiontos" , production.products.list_price as "timi"
from production.products ,sales.orders  
order by list_price desc

/* erotima 5o 
na emfanistoun taproionta pou paragei i eteria electra */
SELECT  production.products.product_name , production.brands.brand_name
from production.products , production.brands
where  production.brands.brand_name ='Electra'

/* ερωτημα 6ο να εμφανιστουν τα προιοντα που κοστιζουν απο 100 εως 1000 δολαρια */

SELECT distinct production.products.product_name , production.products.list_price
from production.products ,sales.orders  
where production.products.list_price between 100 and 1000 
order by list_price asc


/************************************ ερωτηματα για τις πωλησεις *****************************/

/* ερωτημα 7ο εμφανισε τους πελατες που εχου βαλει παραγγελια μεγαλυτερη απο 1000 ευρω */

SELECT DISTINCT SALES.customers.customer_id , 
SALES.customers.first_name AS NAME , 
SALES.customers.last_name AS SURNAME,
order_items.list_price as PRICE

FROM 

sales.customers ,
sales.order_items,
sales.orders

WHERE 

sales.customers.customer_id = sales.orders.customer_id
and sales.order_items.list_price > 1000

/* ερωτημα 8ο  ολες οι παραγγελιες των πελατων μας*/ 

select 
sales.customers.customer_id as ID, 
sales.customers.first_name as FIRSTNAME, 
sales.customers.last_name as LASTNAME


from 
sales.customers,
sales.orders 

		 
where sales.customers.customer_id = sales.orders.customer_id
order by sales.orders.customer_id;

