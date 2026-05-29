-- 1. Total Number of Patients
Select count(*) as total_patients
from healthcare_dataset;

-- 2. Average Billing Amount
SELECT ROUND(AVG("Billing Amount")::numeric, 2) AS avg_billing
FROM healthcare_dataset;

-- 3. Maximum and Minimum Billing Amount
SELECT 
MAX("Billing Amount") AS max_bill,
MIN("Billing Amount") AS min_bill
FROM healthcare_dataset;

-- 4. Patient Count by Gender
SELECT "Gender",COUNT(*) AS total_patients
FROM healthcare_dataset
GROUP BY "Gender";

-- 5. Average Age of Patients
SELECT ROUND(AVG("Age")::numeric,2) AS average_age
FROM healthcare_dataset;

-- 6. Highest Billing Patients
SELECT "Name", "Billing Amount"
FROM healthcare_dataset
ORDER BY "Billing Amount" DESC
LIMIT 10;

-- 6. Admission Type Count
SELECT "Admission Type", COUNT(*)
FROM healthcare_dataset
GROUP BY "Admission Type";

-- 7. Average Billing by Admission Type
SELECT "Admission Type", AVG("Billing Amount")
FROM healthcare_dataset
GROUP BY "Admission Type";

-- 8. Hospital Performance
SELECT "Hospital", COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY "Hospital"
ORDER BY patients DESC;

-- 9. Medical Condition vs Billing
SELECT "Medical Condition", AVG("Billing Amount")
FROM healthcare_dataset
GROUP BY 1;

-- 10. Blood Group Distribution
SELECT "Blood Type", COUNT(*)
FROM healthcare_dataset
GROUP BY 1;