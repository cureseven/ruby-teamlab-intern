CREATE TABLE product (
  id UNSIGNED BIGINT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500),
  price DECIMAL(11, 2) NOT NULL,
  PRIMARY KEY (id),
  KEY key_price (price)
)

CREATE TABLE product_picture (
  id UNSIGNED BIGINT NOT NULL AUTO_INCREMENT,
  product_id BIGINT NOT NULL,
  sha_256 BINARY(32) NOT NULL,
  PRIMARY KEY (id),
  KEY key_product_id (product_id)
)
