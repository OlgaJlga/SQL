use Seminar2_database;
CREATE TABLE `Seminar2`.`sales` (
    id INT NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    amount INT NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO sales (order_date, amount)
VALUES
("03.01.2023", 90),
("04.01.2023", 100),
("05.01.2023", 200),
("06.01.2023", 300),
("07.01.2023", 400),
("08.01.2023", 90),
("09.01.2023", 100),
("10.01.2023", 200),
("11.01.2023", 300),
("12.01.2023", 400),
("13.01.2023", 90),
("14.01.2023", 100),
("15.01.2023", 200),
("16.01.2023", 300),
("17.01.2023", 400),
("18.01.2023", 90),
("19.01.2023", 100),
("20.01.2023", 200),
("21.01.2023", 300),
("22.01.2023", 400),
("23.01.2023", 90),
("24.01.2023", 100),
("25.01.2023", 200),
("26.01.2023", 300),
("27.01.2023", 400),
("28.01.2023", 90),
("29.01.2023", 100),
("30.01.2023", 200),
("31.01.2023", 300);
SELECT id, order_date, amount,
CASE TRUE
    WHEN amount < 100 THEN 'меньше 100'
    WHEN amount >= 100 AND amount <= 300 THEN '100-300'
    ELSE 'больше 300'
END AS order_size
FROM sales;
CREATE TABLE orders (
    orderid INT NOT NULL AUTO_INCREMENT,
    employeeid VARCHAR(5) NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    orderstatus VARCHAR(45) NOT NULL,
    PRIMARY KEY (orderid)
);
INSERT INTO orders (employeeid, amount, orderstatus)
VALUES
("e03",50.65,"OPEN"),
("e02",33.34,"OPEN"),
("e03",7.90,"CLOSED"),
("e03",58.30,"CLOSED"),
("e03",15.02,"CANCELLED"),
("e05",28.46,"CLOSED"),
("e04",23.70,"OPEN"),
("e02",84.01,"OPEN"),
("e06",29.08,"OPEN"),
("e07",23.53,"OPEN"),
("e03",58.08,"CLOSED"),
("e03",58.88,"OPEN"),
("e02",14.36,"CLOSED"),
("e06",93.59,"CLOSED"),
("e05",59.20,"CANCELLED"),
("e03",8.40,"CLOSED"),
("e04",94.67,"CLOSED"),
("e05",79.53,"CANCELLED"),
("e06",65.51,"CLOSED"),
("e03",83.78,"CLOSED"),
("e02",84.01,"OPEN"),
("e06",29.08,"OPEN"),
("e07",23.53,"OPEN"),
("e03",58.08,"CLOSED"),
("e03",58.88,"OPEN"),
("e02",14.36,"CLOSED"),
("e06",93.59,"CLOSED"),
("e05",59.20,"CANCELLED"),
("e03",8.40,"CLOSED");
SELECT orderid, orderstatus,
CASE orderstatus
    WHEN "OPEN" THEN 'Order is in open state.'
    WHEN "CLOSED" THEN 'Order is closed.'
    ELSE 'Order is cancelled.'
END AS order_summary
FROM orders;