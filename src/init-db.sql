CREATE SCHEMA shop;

-- readonly роль для реплик
CREATE USER backend_readonly WITH PASSWORD '123';
GRANT CONNECT ON DATABASE "shop-service-dev" TO backend_readonly;
GRANT USAGE ON SCHEMA shop TO backend_readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA shop
GRANT SELECT ON TABLES TO backend_readonly;

-- TODO: параметризовать создание базы