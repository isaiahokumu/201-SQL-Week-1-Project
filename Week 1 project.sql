-- Where the projects are run and are associated with geographic coordinates

-- =========================================
-- CREATE DATABASE village_db;
-- =========================================

-- USE village_db;

-- =========================================
-- Create jurisdiction hierachy table
-- =========================================

-- CREATE TABLE jurisdiction_hierarchy (
--     id INTEGER NOT NULL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     level VARCHAR(30) NOT NULL,
--     parent VARCHAR(50)
-- );

-- Create the village_locations table with foreign key to jurisdiction_hierarchy
-- CREATE TABLE village_locations (
--     village_id INTEGER NOT NULL PRIMARY KEY,
--     jurisdiction_id INTEGER NOT NULL,
--     latitude VARCHAR(30),
--     longitude VARCHAR(30),
--     total_population INTEGER,
--     FOREIGN KEY (jurisdiction_id) REFERENCES jurisdiction_hierarchy(id)
-- );

-- Create the beneficiary_partner_data table with foreign key to jurisdiction_hierarchy
-- CREATE TABLE beneficiary_partner_data (
--     partner_id INTEGER NOT NULL PRIMARY KEY,
--     partner VARCHAR(30) NOT NULL,
--     jurisdiction_id INTEGER NOT NULL,
--     beneficiaries INTEGER,
--     beneficiary_type VARCHAR(30),
--     FOREIGN KEY (jurisdiction_id) REFERENCES jurisdiction_hierarchy(id)
-- );

-- Insert data into jurisdiction_hierarchy
-- INSERT INTO jurisdiction_hierarchy (id, name, level, parent)
-- VALUES
-- (1, 'Middle Shabelle', 'Region', NULL),
-- (2, 'Hiraan', 'Region', NULL),
-- (3, 'Balcad', 'District', 'Middle Shabelle'),
-- (4, 'Jowhar', 'District', 'Middle Shabelle'),
-- (5, 'Beledweyn', 'District', 'Hiraan'),
-- (6, 'Dharkenley', 'Village', 'Beledweyn'),
-- (7, 'Bulo-Kahin', 'Village', 'Beledweyn'),
-- (8, 'Hilo Kelyo', 'Village', 'Beledweyn'),
-- (9, 'Xubow', 'Village', 'Beledweyn'),
-- (10, 'Xiintooy', 'Village', 'Beledweyn'),
-- (11, 'Dhagax Jebis', 'Village', 'Beledweyn'),
-- (12, 'Filtare', 'Village', 'Beledweyn'),
-- (13, 'Howl-Wadaag', 'Village', 'Beledweyn'),
-- (14, 'Balcad', 'Village', 'Balcad'),
-- (15, 'Mareeray', 'Village', 'Balcad'),
-- (16, 'Kulmis', 'Village', 'Balcad'),
-- (17, 'Sabuun', 'Village', 'Jowhar'),
-- (18, 'Bayaxaw', 'Village', 'Jowhar'),
-- (19, 'Bayaxawo', 'Village', 'Jowhar')

-- =========================================
-- Insert data into village_locations (replacing village name with jurisdiction_id)
-- =========================================

-- INSERT INTO village_locations (village_id, jurisdiction_id, latitude, longitude, total_population)
-- VALUES
-- (1, 6, '4°47''35.40"', '45°12''28.80"', 12800),
-- (2, 7, '4°47''57.00"', '45°11''5.70"', 9485),
-- (3, 8, '4°47''57.00"', '45°12''58.60"', 5212),
-- (4, 9, '4°46''46.77"', '45°12''7.57"', 2558),
-- (5, 10, '4°44''14.40"', '45°13''5.00"', 3850),
-- (6, 11, '4°44''27.86"', '45°12''42.03"', 3563),
-- (7, 12, '4°44''20.43"', '45°12''27.89"', 8000),
-- (8, 13, '4°43''50.00"', '45°11''58.20"', 7525),
-- (9, 14, '2°21.624''', '45°23.928''', 1500),
-- (10, 15, '2°23.504''', '45°25.200''', 7500),
-- (11, 16, '2°36.761''', '45°30.642''', 6058),
-- (12, 17, '2°53.020''', '45°32.356''', 5483),
-- (13, 18, '2°44.768''', '45°29.727''', 3000),
-- (14, 19, '2°44.768''', '45°29.926''', 7560)

-- =========================================
-- Insert data into beneficiary_partner_data (replacing village name with jurisdiction_id)
-- =========================================

-- INSERT INTO beneficiary_partner_data (partner_id, partner, jurisdiction_id, beneficiaries, beneficiary_type)
-- VALUES	
-- (1, 'IRC', 14, 1450, 'Individuals'),
-- (2, 'NRC', 14, 50, 'Households'),
-- (3, 'SCI', 14, 1123, 'Individuals'),
-- (4, 'IMC', 14, 1245, 'Individuals'),
-- (5, 'SCI', 15, 5200, 'Individuals'),
-- (6, 'IMC', 15, 70, 'Households'),
-- (7, 'IRC', 15, 2100, 'Individuals'),
-- (8, 'CESVI', 15, 1800, 'Individuals'),
-- (9, 'SCI', 16, 1340, 'Individuals'),
-- (10, 'IMC', 16, 55, 'Households'),
-- (11, 'SCI', 16, 4500, 'Individuals'),
-- (12, 'IMC', 16, 1670, 'Individuals'),
-- (13, 'IMC', 17, 1340, 'Individuals'),
-- (14, 'IRC', 17, 66, 'Households'),
-- (15, 'CESVI', 17, 4090, 'Individuals'),
-- (16, 'SCI', 17, 2930, 'Individuals'),
-- (17, 'IMC', 18, 2800, 'Individuals'),
-- (18, 'IRC', 18, 2100, 'Individuals'),
-- (19, 'CESVI', 18, 45, 'Households'),
-- (20, 'SCI', 18, 1700, 'Individuals'),
-- (21, 'SCI', 19, 5900, 'Individuals'),
-- (22, 'IMC', 19, 40, 'Households'),
-- (23, 'IRC', 19, 1500, 'Individuals'),
-- (24, 'CESVI', 19, 1260, 'Individuals'),
-- (25, 'CESVI', 6, 7880, 'Individuals'),
-- (26, 'IRC', 6, 34, 'Households'),
-- (27, 'SCI', 7, 4300, 'Individuals'),
-- (28, 'IMC', 7, 4212, 'Individuals'),
-- (29, 'IRC', 7, 3200, 'Individuals'),
-- (30, 'IRC', 8, 5212, 'Individuals'),
-- (31, 'SCI', 8, 25, 'Households'),
-- (32, 'CESVI', 9, 2157, 'Individuals'),
-- (33, 'IMC', 10, 1667, 'Individuals'),
-- (34, 'IRC', 10, 2667, 'Individuals'),
-- (35, 'CESVI', 11, 2856, 'Individuals'),
-- (36, 'CESVI', 12, 7519, 'Individuals')


-- =========================================
-- A. DISTRICT SUMMARY
-- =========================================

-- CREATE OR REPLACE VIEW district_summary AS
-- SELECT
-- 	jh_district.name AS district_name,
--     jh_region.name AS region_name,
--     SUM(
-- 		CASE
-- 			WHEN bpd.beneficiary_type = 'Households' THEN bpd.beneficiaries * 6
--             ELSE bpd.beneficiaries
-- 		END
-- 	) AS individual_beneficiaries,
--     ROUND(
-- 		(SUM(
-- 			CASE
-- 				WHEN bpd.beneficiary_type = 'Households' THEN bpd.beneficiaries * 6
-- 				ELSE bpd.beneficiaries
-- 			END
-- 		) * 100.0) / SUM(vl.total_population), 2 -- using 100.0 forces the syntax to a decimal calculation
-- 	) AS beneficiary_population_ratio

-- FROM jurisdiction_hierarchy jh_district  --  represents district-level records
-- JOIN jurisdiction_hierarchy jh_region 
-- 	ON jh_district.parent = jh_region.name -- represents region-level records
-- 	AND jh_region.level = 'Region'
--     AND jh_district.level = 'District'
--     
-- Finds all beneficiary records for villages in this district
-- LEFT JOIN beneficiary_partner_data bpd 
-- 	ON bpd.jurisdiction_id IN (
-- 		SELECT id FROM jurisdiction_hierarchy
-- 		WHERE parent = jh_district.name /*Finds villages under this district*/ OR id = jh_district.id /*Includes the district itself*/
-- 	)

-- Finds all village location records for villages in this district
-- LEFT JOIN village_locations vl 
-- 	ON vl.jurisdiction_id IN (
-- 		SELECT id FROM jurisdiction_hierarchy
-- 		WHERE parent = jh_district.name OR id = jh_district.id
-- 	)

-- GROUP BY jh_district.name, jh_region.name /*Groups data by district and region for aggregation*/
-- ORDER BY jh_region.name, jh_district.name; /*Sorts results by region first, then district*/

-- ===================================
-- B. PARTNER SUMMARY
-- ===================================
-- "How many villages and districts does each partner organization work in?"

-- CREATE VIEW partner_summary AS
-- SELECT
-- 	bpd.partner AS partner_name,
--     COUNT(DISTINCT jh_village.name) AS villages_reached, -- Counts unique village names for each partner
--     COUNT(DISTINCT jh_district.name) AS districts_reached -- Counts unique district names for each partner
--     
-- FROM beneficiary_partner_data bpd -- each row = one partner project
-- JOIN jurisdiction_hierarchy jh_village 
-- 	ON bpd.jurisdiction_id = jh_village.id -- Links beneficiary data to village information
--     AND jh_village.level = 'Village' -- count actual villages (not districts or regions)
-- JOIN jurisdiction_hierarchy jh_district
-- 	ON jh_village.parent = jh_district.name -- Links villages to their parent districts
--     AND jh_district.level = 'District' 
--     
-- GROUP BY bpd.partner -- Groups all records by partner organization
-- ORDER by bpd.partner; -- Sorts results alphabetically by partner name
--     
-- ======================
-- Query District Summary
-- ======================

-- SELECT * FROM district_summary;

-- ======================
-- Query Partner Summary  
-- ======================

-- SELECT * FROM partner_summary;