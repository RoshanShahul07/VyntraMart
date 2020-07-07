
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

------------------------------------------------

CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

------------------------------------------------

CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;

------------------------------------------------------------

INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Men Bottomwear');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Men Topwear');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Women Tops');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Women Ethnic');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Women Bottomwear');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Women Dresses');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('boys');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('girls');



INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-BOTTOMWEAR-100', 'Brown Slim Fit Jeans', 'This is a slim fit jeans suitable for all weather', 'assets/images/products/men/Bottomwear/men-bw-100.jpg', 1, 100, 1499, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-BOTTOMWEAR-101', 'Grey Checked Jeans', 'This is a grey checked trouser suitable for daily usage', 'assets/images/products/men/Bottomwear/men-bw-101.jpg', 1, 100, 1699, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-BOTTOMWEAR-102', 'Peach Shorts', 'This is a cool and comfort peach color shorts suitable for all weather', 'assets/images/products/men/Bottomwear/men-bw-102.jpg', 1, 100, 1499, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-BOTTOMWEAR-103', 'Blue Skinny Jeans', 'This is a cool and comfort blue color skinny jean suitable for all weather', 'assets/images/products/men/Bottomwear/men-bw-103.jpg', 1, 100, 1499, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-BOTTOMWEAR-104', 'Blue Slim Tampered Jeans', 'This is a cool and comfort blue color slim tampered jean suitable for all weather', 'assets/images/products/men/Bottomwear/men-bw-104.jpg', 1, 100, 1499, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-BOTTOMWEAR-105', 'Olive Green Shorts', 'This is a cool olive green color shorts suitable for all weather', 'assets/images/products/men/Bottomwear/men-bw-105.jpg', 1, 100, 1499, 1, NOW());



INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-100', 'Black Stripped Round neck T-shirt', 'This is black stripped round neck casual t-shirt', 'assets/images/products/men/Topwear/men-tw-100.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-101', 'Grey Graphic T-shirt', 'This is a grey graphic casual t-shirt', 'assets/images/products/men/Topwear/men-tw-101.jpg', 1, 100, 1699, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-102', 'Navy Blue Slim Fit Shirt', 'This is a navy blue slim fir shirt', 'assets/images/products/men/Topwear/men-tw-102.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-103', 'Grey shirt', 'This is a formal grey shirt', 'assets/images/products/men/Topwear/men-tw-103.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-104', 'Yellow Slim Fit formal shirt', 'This is a yellow slim fir formal shirt', 'assets/images/products/men/Topwear/men-tw-104.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-105', 'Blue Solid Straight Kurta', 'This is a cool solid blue straight kurta', 'assets/images/products/men/Topwear/men-tw-105.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-106', 'Nay Blue Red Colorblocked T-shirt', 'This is a navy blue and red colorblocked casual t-shirt', 'assets/images/products/men/Topwear/men-tw-106.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-107', 'Half White T-shirt', 'This is half white casual t-shirt', 'assets/images/products/men/Topwear/men-tw-107.jpg', 1, 100, 1499, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MEN-TOPWEAR-108', 'Black and Yellow checked shirt', 'This is a black and yellow checked semi-formal shirt', 'assets/images/products/men/Topwear/men-tw-108.jpg', 1, 100, 1499, 2, NOW());


INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-100', 'Denim Fit Shorts', 'This is a denim fit shorts', 'assets/images/products/women/Bottomwear/women-bw-100.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-101', 'Navy Blue Skinny Fit Jeans', 'This is a skinny fit jeans suitable for all weather', 'assets/images/products/women/Bottomwear/women-bw-101.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-102', 'Black mid length skirt', 'This is a slim fit skirt', 'assets/images/products/women/Bottomwear/women-bw-102.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-103', 'Black mini Skirt', 'This is a mini skirt', 'assets/images/products/women/Bottomwear/women-bw-103.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-104', 'Blue Skinny Ankle Jeans', 'This is a skinny fit jeans suitable for all weather', 'assets/images/products/women/Bottomwear/women-bw-104.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-105', 'Blue Slim Fit Jeans', 'This is a slim fit jeans suitable for all weather', 'assets/images/products/women/Bottomwear/women-bw-105.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-106', 'Black Shorts', 'This is a black color shorts suitable for all weather', 'assets/images/products/women/Bottomwear/wpmen-bw-106.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-107', 'Black Jeans', 'This is a slim fit jeans suitable for all weather', 'assets/images/products/women/Bottomwear/women-bw-107.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-108', 'Denim Blue Shorts', 'This is a denim blue shorts', 'assets/images/products/women/Bottomwear/women-bw-108.jpg', 1, 100, 1499, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-BOTTOMWEAR-109', 'Grey Dyed Slim Fit Jeans', 'This is a grey slim fit jeans suitable for all weather', 'assets/images/products/women/Bottomwear/women-bw-109.jpg', 1, 100, 1499, 3, NOW());



INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-100', 'Green Printed Round Neck T-shirt', 'This is a green printed comfy round neck t-shirt', 'assets/images/products/women/Tops/women-tops-100.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-101', 'Black Green Printed Casual Shirt', 'This is a black and green printed casual shirt', 'assets/images/products/women/Tops/women-tops-101.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-102', 'Coffee Brown and Red Casual Shirt', 'This is a coffee brown and red casual shirt', 'assets/images/products/women/Tops/women-tops-102.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-103', 'Solid Grey Round Neck T-shirt', 'This is a solid grey round neck t-shirt', 'assets/images/products/women/Tops/women-tops-103.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-104', 'White Printed Round Neck T-shirt', 'This is a white printed round neck t-shirt', 'assets/images/products/women/Tops/women-tops-104.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-105', 'Solid Black Scoop Neck Shirt', 'This is a solid black scoop neck shirt', 'assets/images/products/women/Tops/women-tops-105.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-106', 'Navy Blue & White Stripped Round Neck Shirt', 'This is a navy blue and white stripped round neck shirt', 'assets/images/products/women/Tops/women-tops-106.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-107', 'Solid Burgandy Casual Shirt', 'This is a solid burgandy casual shirt', 'assets/images/products/women/Tops/women-tops-107.jpg', 1, 100, 1499, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-TOPS-108', 'Solid Green Regular Fit Casual Shirt', 'This is a solid green regular fit casual shirt', 'assets/images/products/women/Tops/women-tops-108.jpg', 1, 100, 1499, 4, NOW());


INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-100', 'Peach Straight Kurta', 'This is a peach coloured floral printed comfy straight kurta', 'assets/images/products/women/Ethnic/women-ethnic-100.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-101', 'Burgandy Lehenga', 'This is a Burgandy coloured embellished lehanga', 'assets/images/products/women/Ethnic/women-ethnic-101.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-102', 'Navy Blue & Peach Lehanga', 'This is a navy blue and peach coloured semi-stiched lehanga', 'assets/images/products/women/Ethnic/women-ethnic-102.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-103', 'Green Woven Design Straight Kurta', 'This is a solid green woven stiched straight kurta', 'assets/images/products/women/Ethnic/women-ethnic-103.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-104', 'Mustard Silk Saree', 'This is a Mustard Silk Woven design saree', 'assets/images/products/women/Ethnic/women-ethnic-104.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-105', 'Blue Straight Kurta', 'This is a solid blue embriodered straight casual kurta', 'assets/images/products/women/Ethnic/women-ethnic-105.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-106', 'Mustard Cotton Silk Saree', 'This is a mustard cotton silk casual saree', 'assets/images/products/women/Ethnic/women-ethnic-106.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-107', 'Solid Black Georgtte Saree', 'This is a solid black embellished georgette saree', 'assets/images/products/women/Ethnic/women-ethnic-107.jpg', 1, 100, 1499, 5, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-ETHNIC-108', 'Teal Blue Printed Kurta', 'This is a solid teal blue printed kurta', 'assets/images/products/women/Ethnic/women-ethnic-108.jpg', 1, 100, 1499, 5, NOW());


INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-100', 'Beige Dress', 'This is a beige coloured comfy mid length dress', 'assets/images/products/women/Dresses/women-dresses-100.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-101', 'Navy Blue Dress', 'This is a solid navy blue coloured dress', 'assets/images/products/women/Dresses/women-dresses-101.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-102', 'Red Floral Long Sleeve Dress', 'This is a solid red floral long sleeve shirred dress', 'assets/images/products/women/Dresses/women-dresses-102.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-103', 'Black Lace Pleated Midi Dress', 'This is a solid black lace pleated midi dress', 'assets/images/products/women/Dresses/women-dresses-103.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-104', 'Solid lace A-Lined Dress', 'This is a solid black a-lined dress', 'assets/images/products/women/Dresses/women-dresses-104.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-105', 'Maroon Solid Pinafore Dress', 'This is a solid maroon pinafore dress', 'assets/images/products/women/Dresses/women-dresses-105.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-106', 'Beige Floral Wrap Dress', 'This is a beige floral wrap dress', 'assets/images/products/women/Dresses/women-dresses-106.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-107', 'Black and White Floral Dress', 'This is a solid black and white floral dress', 'assets/images/products/women/Dresses/women-dresses-107.jpg', 1, 100, 1499, 6, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('WOMEN-DRESSES-108', 'Solid Red Maxi Dress', 'This is a solid red maxi dress', 'assets/images/products/women/Dresses/women-dresses-108.jpg', 1, 100, 1499, 6, NOW());



INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-100', 'Navy Blue Printed Shorts', 'This is a navy blue printed casual shorts', 'assets/images/products/kids/boys/kids-boys-100.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-101', 'Light Blue Checked Shirt', 'This is a light blue checked shirt', 'assets/images/products/kids/boys/kids-boys-101.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-102', 'Green Printed T-Shirt with Shorts', 'This is a solid green printed t-shirt with yellow shorts', 'assets/images/products/kids/boys/kids-boys-102.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-103', 'Solid Black Shorts', 'This is a solid black comfy shorts', 'assets/images/products/kids/boys/kids-boys-103.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-104', 'Blue Printed Shorts', 'This is a solid blue printed shorts', 'assets/images/products/kids/boys/kids-boys-104.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-105', 'Navy Blue & White Casual Shirt', 'This is a solid blue & white casual shirt', 'assets/images/products/kids/boys/kids-boys-105.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-106', 'White Blue Striped Round Neck T-Shirt', 'This is a white blue stripped rounf neck t-shirt', 'assets/images/products/kids/boys/kids-boys-106.jpg', 1, 100, 1499, 7, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-BOYS-107', 'Yellow & Black Round Neck T-Shirt', 'This is a solid black and yellow round neck t-shirt', 'assets/images/products/kids/boys/kids-boys-107.jpg', 1, 100, 1499, 7, NOW());



INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-100', 'Blue Jeans', 'This is a blue casual jeans', 'assets/images/products/kids/girls/kids-girls-100.jpg', 1, 100, 1499, 8, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-101', 'White Minnie Mouse T-shirt', 'This is a whiet minnie mouse t-shirt', 'assets/images/products/kids/girls/kids-girls-101.jpg', 1, 100, 1499, 8, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-102', 'Solid Black Printed T-shirt', 'This is a solid black printed t-shirt', 'assets/images/products/kids/girls/kids-girls-102.jpg', 1, 100, 1499, 8, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-103', 'Solid Red Printed Shirt', 'This is a solid red printed t-shirt', 'assets/images/products/kids/girls/kids-girls-103.jpg', 1, 100, 1499, 8, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-104', 'Dark Blue Regular Fit Jeans', 'This is a solid dark blue jeans', 'assets/images/products/kids/girls/kids-girls-104.jpg', 1, 100, 1499, 8, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-105', 'Yellow and Blue Solid Top with Skirt', 'This is a yellow and solid blue top with skirt', 'assets/images/products/kids/girls/kids-girls-105.jpg', 1, 100, 1499, 8, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('KIDS-GIRLS-106', 'Red and solid Blue Top with Skirt', 'This is a red and solid blue top with skirt', 'assets/images/products/kids/girls/kids-girls-106.jpg', 1, 100, 1499, 8, NOW());
