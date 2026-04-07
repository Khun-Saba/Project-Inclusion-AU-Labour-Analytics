use labour_status_disability;
SELECT* from labourstats;

------- Creating a unified Fact Table for Gender and Work Type from Labour Force Stats -------------
SELECT 
    `Index`,
    `Labour force status` AS Disability_Type,
    'Male' AS Gender,
    'Full-time' AS Work_Type,
    `Male: Full-time` AS Headcount
FROM labourstats

UNION ALL

SELECT 
    `Index`, `Labour force status`, 'Female', 'Full-time', `Female: Full-time`
FROM labourstats

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Male', 'Part-time', `Male: Part-time`
FROM labourstats

UNION ALL

SELECT 
	`Index`, `Labour force status`, 'Female', 'Part-time', `Female: Part-time`
FROM labourstats

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Male', 'Underemployed', `Male: Underemployed`
FROM labourstats

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Female', 'Underemployed', `Female: Underemployed`
FROM labourstats

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Male', 'Unemployed', `Male: Unemployed`
FROM labourstats

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Female', 'Unemployed', `Female: Unemployed`
FROM labourstats

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Male', 'Not in the labour force',`Male: Not in the labour force`
FROM labourstats 

UNION ALL

SELECT
	`Index`, `Labour force status`, 'Female', 'Not in the labour force',`Female: Not in the labour force`
FROM labourstats; 

-- --------- Creating a unified Fact table for occupation from Employment table ----
SELECT* from t3_employment;
SELECT `index`, `Employment characteristics` AS Disability_Type, 
		'Managers' AS Occupation,
        `Managers` AS Headcount
		FROM t3_employment
        
UNION ALL

SELECT `index`, `Employment characteristics`, 'Professionals', `Professionals`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Technicians and Trades Workers', `Technicians and Trades Workers`
        FROM t3_employment		

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Community and Personal Service Workers', `Community and Personal Service Workers`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Clerical and Administrative Workers', `Clerical and Administrative Workers`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Sales Workers', `Sales Workers`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Machinery Operators and Drivers', `Machinery Operators and Drivers`
        FROM t3_employment
                
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Labourers', `Labourers`
        FROM t3_employment;
                
   -- --------- Creating a unified Fact table for industry employment table---    
SELECT `index`, `Employment characteristics` AS Disability_Type, 
		'Agriculture, forestry and fishing' AS Industry,
        `Agriculture, forestry and fishing` AS Headcount
		FROM t3_employment
        
UNION ALL

SELECT `index`, `Employment characteristics`, 'Mining', `Mining`
        FROM t3_employment

UNION ALL

SELECT `index`, `Employment characteristics`, 'Manufacturing', `Manufacturing`
        FROM t3_employment

UNION ALL

SELECT `index`, `Employment characteristics`, 'Electricity, gas, water and waste services', `Electricity, gas, water and waste services`
        FROM t3_employment

UNION ALL

SELECT `index`, `Employment characteristics`, 'Construction', `Construction`
        FROM t3_employment

UNION ALL

SELECT `index`, `Employment characteristics`, 'Wholesale trade', `Wholesale trade`
        FROM t3_employment

UNION ALL

SELECT `index`, `Employment characteristics`, 'Retail trade', `Retail trade`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Accommodation and food services', `Accommodation and food services`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Transport, postal and warehousing', `Transport, postal and warehousing`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Information media and telecommunications', `Information media and telecommunications`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Financial and insurance services', `Financial and insurance services`
        FROM t3_employment

UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Rental, hiring and real estate services', `Rental, hiring and real estate services`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Professional, scientific and technical services', `Professional, scientific and technical services`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Administrative and support services', `Administrative and support services`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Public administration and safety', `Public administration and safety`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Education and training', `Education and training`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Health care and social assistance', `Health care and social assistance`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Arts and recreation services', `Arts and recreation services`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Other services', `Other services(f)`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Public', `Public`
        FROM t3_employment
        
UNION ALL
        
SELECT `index`, `Employment characteristics`, 'Private', `Private`
        FROM t3_employment;