CREATE DATABASE product_admin;
USE product_admin;

CREATE TABLE product (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500),
  price DECIMAL(11, 2) NOT NULL,
  PRIMARY KEY (id),
  KEY key_price (price)
) DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB;

CREATE TABLE product_picture (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  product_id BIGINT NOT NULL,
  sha_256 BINARY(32) NOT NULL,
  PRIMARY KEY (id),
  KEY key_product_id (product_id)
) DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB;
