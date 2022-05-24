/** 10 ερωτηματα για εξαγωγη χρησιμων πληροφοριων απο την βαση bikerstore */

/* ΕΡΩΤΗΜΑ 1 
   ολα τα διαθεσιμα αποθεματα μας */
   
   SELECT DISTINCT(BRAND_NAME) AS "MANUFACTURER NAME" FROM PRODUCTION.brands 
   ORDER BY BRAND_NAME ASC 

   