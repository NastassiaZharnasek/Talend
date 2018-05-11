CREATE USER HR
IDENTIFIED BY oracle;
GRANT dba to HR;

CREATE TABLE file_names(
    file_name VARCHAR2 (250)
);



CREATE TABLE payments
(
    paymentid NUMBER(15),
    customerid NUMBER(15),
    productid NUMBER(15),
    transactiondate VARCHAR2(255),
    creditcard VARCHAR2(255),
    creditcardnumber VARCHAR2(255)
);

