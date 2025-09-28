-- 1. Drop old table
DROP TABLE IF EXISTS employee2;

-- 2. Create table (all columns text except numeric/ID)
CREATE TABLE employee2 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    department VARCHAR(20),
    salary NUMERIC(10,2),
    joining_date_raw TEXT,
    age INT
);

-- 3. >>> Use pgAdmin Import Tool here
-- Import your CSV → map joining_date column to joining_date_raw

-- 4. Add a clean DATE column
ALTER TABLE employee2 ADD COLUMN joining_date DATE;

-- 5. Convert raw text into DATE
UPDATE employee2
SET joining_date = TO_DATE(
    REPLACE(joining_date_raw, '/', '-'),
    CASE
        WHEN joining_date_raw LIKE '%/%/%' AND LENGTH(SPLIT_PART(joining_date_raw,'/',1))=4 THEN 'YYYY-MM-DD'
        WHEN joining_date_raw LIKE '%-%-%' AND LENGTH(SPLIT_PART(joining_date_raw,'-',1))=4 THEN 'YYYY-MM-DD'
        ELSE 'DD-MM-YYYY'
    END
);

-- 6. Verify
SELECT employee_id, first_name, last_name, joining_date_raw, joining_date FROM employee2;
