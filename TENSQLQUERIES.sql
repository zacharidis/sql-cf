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
   