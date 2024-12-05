-- GRANTS FOR APP_ADMIN
GRANT CREATE SESSION TO APPADMIN_USER;
GRANT CREATE VIEW, CREATE PROCEDURE, CREATE TABLE, CREATE USER, DROP USER TO APPADMIN_USER WITH ADMIN OPTION;

-- Full access to all tables
GRANT SELECT, INSERT, UPDATE, DELETE ON USERS TO APPADMIN_USER;
GRANT SELECT, INSERT, UPDATE, DELETE ON INFLUENCERS TO APPADMIN_USER;
GRANT SELECT, INSERT, UPDATE, DELETE ON PRODUCTS TO APPADMIN_USER;
GRANT SELECT, INSERT, UPDATE, DELETE ON ORDERS TO APPADMIN_USER;
GRANT SELECT, INSERT, UPDATE, DELETE ON ORDER_DETAILS TO APPADMIN_USER;

-- Access to views
GRANT SELECT ON Current_Inventory_Status TO APPADMIN_USER;
GRANT SELECT ON Total_Sales_Region TO APPADMIN_USER;
GRANT SELECT ON Influencer_Sales_Performance TO APPADMIN_USER;
GRANT SELECT ON Customer_Purchase_Behavior TO APPADMIN_USER;
GRANT SELECT ON Order_Fulfillment_Status TO APPADMIN_USER;

COMMIT;

-- GRANTS FOR INVENTORY_MANAGER
GRANT CREATE SESSION TO INVENTORY_MANAGER;

-- Manage inventory and products
GRANT SELECT, INSERT, UPDATE ON PRODUCTS TO INVENTORY_MANAGER;
GRANT SELECT ON Current_Inventory_Status TO INVENTORY_MANAGER;
GRANT EXECUTE ON update_product_details TO Inventory_Manager;
GRANT EXECUTE ON update_order_status TO Inventory_Manager;



-- Access orders to update status
GRANT SELECT ON ORDERS TO INVENTORY_MANAGER;
GRANT UPDATE (Order_Status) ON ORDERS TO INVENTORY_MANAGER;

COMMIT;

-- GRANTS FOR INFLUENCER_USER
GRANT CREATE SESSION TO INFLUENCER_USER;

-- Read-only access to products and influencers
GRANT SELECT ON PRODUCTS TO INFLUENCER_USER;
GRANT SELECT ON INFLUENCERS TO INFLUENCER_USER;

-- Access influencer performance and inventory views
GRANT SELECT ON Influencer_Sales_Performance TO INFLUENCER_USER;
GRANT SELECT ON Current_Inventory_Status TO INFLUENCER_USER;

COMMIT;

-- GRANTS FOR CUSTOMER_USER
GRANT CREATE SESSION TO CUSTOMER_USER;

-- Manage their orders and view products
GRANT SELECT ON ORDERS TO CUSTOMER_USER;
GRANT SELECT ON ORDER_DETAILS TO CUSTOMER_USER;

-- Access to view product and influencer details
GRANT SELECT ON PRODUCTS TO CUSTOMER_USER;
GRANT SELECT ON INFLUENCERS TO CUSTOMER_USER;

-- Access customer-specific views
GRANT SELECT ON Order_Fulfillment_Status TO CUSTOMER_USER;

COMMIT;