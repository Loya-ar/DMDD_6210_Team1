-- Drop and Create APP_ADMIN User
SET SERVEROUTPUT ON;
DECLARE
  user_exists NUMBER;
BEGIN
  SELECT COUNT(*) INTO user_exists FROM all_users WHERE username = 'APPADMIN_USER';
  IF user_exists > 0 THEN
    EXECUTE IMMEDIATE 'DROP USER APPADMIN_USER CASCADE';
    DBMS_OUTPUT.PUT_LINE('User APPADMIN_USER dropped successfully.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('User APPADMIN_USER does not exist.');
  END IF;
END;
/
CREATE USER APPADMIN_USER IDENTIFIED BY "SecureAdmin@2024" DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
GRANT CREATE SESSION, CREATE VIEW, CREATE PROCEDURE, CREATE SEQUENCE, CREATE TABLE, CREATE USER, DROP USER TO APPADMIN_USER WITH ADMIN OPTION;
COMMIT;

-- Drop and Create INVENTORY_MANAGER User
SET SERVEROUTPUT ON;
DECLARE
  user_exists NUMBER;
BEGIN
  SELECT COUNT(*) INTO user_exists FROM all_users WHERE username = 'INVENTORY_MANAGER';
  IF user_exists > 0 THEN
    EXECUTE IMMEDIATE 'DROP USER INVENTORY_MANAGER CASCADE';
    DBMS_OUTPUT.PUT_LINE('User INVENTORY_MANAGER dropped successfully.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('User INVENTORY_MANAGER does not exist.');
  END IF;
END;
/
CREATE USER INVENTORY_MANAGER IDENTIFIED BY "SecureInventory@2024" DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
GRANT CREATE SESSION TO INVENTORY_MANAGER;
COMMIT;

-- Drop and Create INFLUENCER_USER User
SET SERVEROUTPUT ON;
DECLARE
  user_exists NUMBER;
BEGIN
  SELECT COUNT(*) INTO user_exists FROM all_users WHERE username = 'INFLUENCER_USER';
  IF user_exists > 0 THEN
    EXECUTE IMMEDIATE 'DROP USER INFLUENCER_USER CASCADE';
    DBMS_OUTPUT.PUT_LINE('User INFLUENCER_USER dropped successfully.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('User INFLUENCER_USER does not exist.');
  END IF;
END;
/
CREATE USER INFLUENCER_USER IDENTIFIED BY "SecureInfluencer@2024" DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
GRANT CREATE SESSION TO INFLUENCER_USER;
COMMIT;

-- Drop and Create CUSTOMER_USER User
SET SERVEROUTPUT ON;
DECLARE
  user_exists NUMBER;
BEGIN
  SELECT COUNT(*) INTO user_exists FROM all_users WHERE username = 'CUSTOMER_USER';
  IF user_exists > 0 THEN
    EXECUTE IMMEDIATE 'DROP USER CUSTOMER_USER CASCADE';
    DBMS_OUTPUT.PUT_LINE('User CUSTOMER_USER dropped successfully.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('User CUSTOMER_USER does not exist.');
  END IF;
END;
/
CREATE USER CUSTOMER_USER IDENTIFIED BY "SecureCustomer@2024" DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
GRANT CREATE SESSION TO CUSTOMER_USER;
COMMIT;
