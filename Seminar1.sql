CREATE TABLE `homework_database`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT,
  `models_mobile_phones` VARCHAR(45) NOT NULL,
  `manufacturers_mobile_phones` VARCHAR(45) NOT NULL,
  `prices_mobile_phones` DECIMAL NULL,
  `quantity_mobile_phones` INT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));
  
INSERT INTO `homework_database`.`mobile_phones` 
  (`models_mobile_phones`, `manufacturers_mobile_phones`, `prices_mobile_phones`, `quantity_mobile_phones`) 
VALUES 
('DEXP A360 16 ГБ', 'DEXP', 2600 , 10),
('INOI A22 Lite 8 ГБ', 'INOI', 3100, 10),
('Black Fox B2 Fox 8 ГБ', 'Black Fox', 3450, 10),
('Samsung Galaxy A03 Core 32 ГБ', 'Samsung', 7000, 10),
('Samsung Galaxy A14 64 ГБ', 'Samsung', 15000, 10),
('Samsung Galaxy M32 128 ГБ', 'Samsung', 22000, 10),
('HUAWEI nova Y61 64 ГБ', 'HUAWEI', 12000, 10),
('HONOR X5 32 ГБ', 'HONOR', 5000, 10);

SELECT models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones 
FROM mobile_phones
WHERE quantity_mobile_phones > 2;
SELECT product_name, manufacturer, product_count, price 
FROM test_schema.mobile_phones 
WHERE manufacturer='Samsung'; 