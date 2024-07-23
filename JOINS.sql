CREATE DATABASE JOINS
USE JOINS

CREATE TABLE CUSTOMERS(
	CID INT,
    CNAME VARCHAR(100), 
    MOBILE BIGINT, 
    ADDRESS VARCHAR(100));

INSERT INTO CUSTOMERS VALUES(111,"MANOJ",8106444512,"HYDERABAD"),(112,"RAVI",7013450556,"VIZAG"),(113,"HARI",99489896,"CHENNAI"),(114,"DAVID",6320042055,"HYDERABAD")
 SELECT * FROM CUSTOMERS
 
 CREATE TABLE ORDERS( 
	OID INT, 
    ORDER_NUM INT, 
    ITEM VARCHAR(100),
    ORDER_STATUS VARCHAR(100))
    
 INSERT INTO ORDERS VALUES(111,1001,"PHONE","SHIPPED"),(111,1002,"LAPTOP","SHIPPED"),(112,1003,"LAPTOP","PLACED"),(113,1004,"SHOE","PLACED"),(113,1005,"BAG","SHIPPED")
 INSERT INTO ORDERS VALUES(115,1006,"REMOTE","SHIPPED")
 SELECT * FROM ORDERS
 
 ---- INNER JOIN RETURNS THE MATCHING ROWS FROM BOTH TABLES ----
 SELECT C.CID,C.CNAME,ORDER_STATUS FROM CUSTOMERS AS C INNER JOIN ORDERS AS O ON C.CID=O.OID 
 
 ---- LEFT JOIN RETURNS ALL THE ROWS FROM LEFT TABLE AND MATCHING ROWS FROM RIGHT TABLE ----
 SELECT C.CID,C.CNAME,ORDER_STATUS FROM CUSTOMERS AS C LEFT JOIN ORDERS AS O ON C.CID=O.OID GROUP BY C.CID,C.CNAME,ORDER_STATUS
 
 ---- RIGHT JOIN RETURNS ALL THE ROWS FROM RIGHT TABLE AND MATCHING ROWS FROM LEFT TABLE ----
 SELECT OID,ORDER_NUM,ITEM,ORDER_STATUS FROM CUSTOMERS AS C RIGHT JOIN ORDERS AS O ON C.CID=O.OID GROUP BY OID,ORDER_NUM,ITEM,ORDER_STATUS
 
 
 ----  FULL OUTER /UNION  JOIN COMBINES LEFT AND RIGHT JOINS ----
 SELECT C.CID,C.CNAME,ORDER_STATUS FROM CUSTOMERS AS C LEFT JOIN ORDERS AS O ON C.CID=O.OID GROUP BY C.CID,C.CNAME,ORDER_STATUS UNION
 SELECT C.CID,C.CNAME,ORDER_STATUS FROM CUSTOMERS AS C RIGHT JOIN ORDERS AS O ON C.CID=O.OID GROUP BY C.CID,C.CNAME,ORDER_STATUS
 
 
 SELECT OID,ORDER_NUM,ITEM,ORDER_STATUS FROM CUSTOMERS AS C RIGHT JOIN ORDERS AS O ON C.CID=O.OID GROUP BY OID,ORDER_NUM,ITEM,ORDER_STATUS UNION
 SELECT OID,ORDER_NUM,ITEM,ORDER_STATUS FROM CUSTOMERS AS C LEFT JOIN ORDERS AS O ON C.CID=O.OID GROUP BY OID,ORDER_NUM,ITEM,ORDER_STATUS
 
 ----- CROSS JOIN ----
 SELECT * FROM ORDERS CROSS JOIN CUSTOMERS
 SELECT * FROM ORDERS,CUSTOMERS
 
 
 ---- SELF JOIN ---
 CREATE TABLE EMPLOYEES(
		EMP_ID INT,
        EMP_NAME VARCHAR(100),
        REFERRAL_ID INT)
        
        INSERT INTO EMPLOYEES(EMP_ID,EMP_NAME) VALUES(111,"MANOJ")
        INSERT INTO EMPLOYEES VALUES(112,"RAVI",111),(114,"VIJAY",111),(115,"KUMAR",113)
        INSERT INTO EMPLOYEES(EMP_ID,EMP_NAME) VALUES(113,"HARI")
        
        SELECT * FROM EMPLOYEES
        
        SELECT B.EMP_ID,B.EMP_NAME ,A.EMP_NAME AS REFFEREDBY FROM EMPLOYEES AS A INNER JOIN EMPLOYEES AS B ON A.EMP_ID=B.REFERRAL_ID
        
        SELECT A.EMP_ID,A.EMP_NAME   FROM EMPLOYEES AS A LEFT JOIN EMPLOYEES AS B ON A.EMP_ID=B.REFERRAL_ID GROUP BY A.EMP_ID,A.EMP_NAME
        
        SELECT A.EMP_ID,A.EMP_NAME   FROM EMPLOYEES AS A RIGHT JOIN EMPLOYEES AS B ON A.EMP_ID=B.REFERRAL_ID GROUP BY A.EMP_ID,A.EMP_NAME
        
        SELECT A.EMP_ID,A.EMP_NAME   FROM EMPLOYEES AS A LEFT JOIN EMPLOYEES AS B ON A.EMP_ID=B.REFERRAL_ID GROUP BY A.EMP_ID,A.EMP_NAME UNION
        SELECT A.EMP_ID,A.EMP_NAME   FROM EMPLOYEES AS A RIGHT JOIN EMPLOYEES AS B ON A.EMP_ID=B.REFERRAL_ID GROUP BY A.EMP_ID,A.EMP_NAME
        
        
        
        
        
        
        
        
 
 
 
 
 
 