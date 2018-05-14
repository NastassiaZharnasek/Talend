CREATE USER Talend
IDENTIFIED BY oracle;

GRANT dba TO Talend;


-----------------------------------------------------------------------------------


DROP TABLE customers;
CREATE TABLE customers(
    ID              NUMBER,
    Name            VARCHAR2(255),
    Username        VARCHAR2(255),
    Email           VARCHAR2(255),
    DateOfBirth     DATE,
    StreetAddress   VARCHAR2(255),
    City            VARCHAR2(255),
    Country         VARCHAR2(255),
    Zip             NUMBER,
    State           VARCHAR2(255),
    Phone           VARCHAR2(255)
);


DROP TABLE products;
CREATE TABLE products(
    Products	            NUMBER,
    ProductName	            VARCHAR2(255),
    CompanyName	            VARCHAR2(255),
    Price	                NUMBER,
    WarehouseLocationState  VARCHAR2(255)
);


DROP TABLE purchases;
CREATE TABLE purchases(
    PaymentID           NUMBER,
    CustomerId          NUMBER,
    ProductId           NUMBER,
    TransactionDate     DATE,
    CreditCard          VARCHAR2(255),
    CreditCardNumber    VARCHAR2(255)
);


DROP TABLE file_names;
CREATE TABLE file_names(
    file_name VARCHAR2(255)
);



----------------------------------------------------------------------------------



DROP TABLE dim_customers;
CREATE TABLE dim_customers(
    Customer_surr_id    NUMBER,
    ID                  NUMBER,
    Name                VARCHAR2(255),
    Username            VARCHAR2(255),
    Email               VARCHAR2(255),
    DateOfBirth         DATE,
    StreetAddress       VARCHAR2(255),
    City                VARCHAR2(255),
    Country             VARCHAR2(255),
    Zip                 NUMBER,
    State               VARCHAR2(255),
    Phone               VARCHAR2(255)
);


DROP TABLE dim_products;
CREATE TABLE dim_products(
    Product_surr_id         NUMBER,
    Products	            NUMBER,
    ProductName	            VARCHAR2(255),
    CompanyName	            VARCHAR2(255),
    Price	                NUMBER,
    WarehouseLocationState  VARCHAR2(255)
);


DROP TABLE fact_purchase;
CREATE TABLE fact_purchase(
    Purchase_surr_id    NUMBER,
    Customer_surr_id    NUMBER,
    Product_surr_id     NUMBER,
    PaymentID           NUMBER,
    TransactionDate     VARCHAR2(255),
    CreditCard          VARCHAR2(255),
    CreditCardNumber    VARCHAR2(255),
    isInterState        NUMBER
);


DROP SEQUENCE seq_customers;
CREATE SEQUENCE seq_customers
INCREMENT BY 1
START WITH 1;

DROP SEQUENCE seq_products;
CREATE SEQUENCE seq_products
INCREMENT BY 1
START WITH 1;

DROP SEQUENCE seq_purchases;
CREATE SEQUENCE seq_purchases
INCREMENT BY 1
START WITH 1;




