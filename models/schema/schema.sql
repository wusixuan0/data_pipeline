-- snowsql -a su79932.ca-central-1.aws -u SIXUAN -o log_level=DEBUG -f models/schema/schema.sql
USE DATABASE SIXUAN_DBT_PROJECT;
USE SCHEMA DEV_SCHEMA;

CREATE TABLE IF NOT EXISTS inventory_data (
    inventory_id NUMBER,
    product_id VARCHAR,
    warehouse_id NUMBER,
    stock_level NUMBER,
    restock_date DATE,
    supplier_id NUMBER,
    storage_condition VARCHAR,
    inventory_status VARCHAR,
    last_audit_date TIMESTAMP_NTZ,
    reorder_level NUMBER,
    quantity_in_stock NUMBER,
    rating VARCHAR,
    sales_volume NUMBER,
    weight VARCHAR,
    discounts VARCHAR,
    safety_stock NUMBER,
    average_monthly_demand NUMBER,
    last_restock_date DATE,
    next_restock_date DATE
);

CREATE TABLE IF NOT EXISTS product_data (
    product_id VARCHAR,
    product_name VARCHAR,
    product_category VARCHAR,
    price NUMBER,
    supplier_id VARCHAR,
    product_color VARCHAR,
    manufacturing_date DATE,
    expiration_date DATE,
    warranty_period VARCHAR,
    quantity_in_stock NUMBER,
    rating NUMBER,
    sales_volume NUMBER,
    weight_grams NUMBER,
    discount_percentage NUMBER
);
