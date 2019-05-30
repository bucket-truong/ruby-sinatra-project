INSERT INTO users (username, password_digest) VALUES ('Jim', '23slkdlgk');
INSERT INTO users (username, password_digest) VALUES ('Rich', '3412mdfg');


INSERT INTO categories (name) VALUES ('Clothing');
INSERT INTO categories (name) VALUES ('Sports');
INSERT INTO categories (name) VALUES ('Housing');
INSERT INTO categories (name) VALUES ('Electronics');
INSERT INTO categories (name) VALUES ('Other');


INSERT INTO products (title, image, product_price, description, user_id, category_id) VALUES ('Iphone 6',
'https://target.scene7.com/is/image/Target/GUEST_211482e4-2703-42c0-b76a-55a6f23ba443?wid=488&hei=488&fmt=pjpeg', 355.67, 'iphone 6 in good condition, barely used', 1, 4);


INSERT INTO products (title, image, product_price, description, user_id, category_id) VALUES ('Carpet',
'https://target.scene7.com/is/image/Target/GUEST_211482e4-2703-42c0-b76a-55a6f23ba443?wid=488&hei=488&fmt=pjpeg', 22.67, 'carpet in good condition, barely used', 2, 3);

INSERT INTO products (title, image, product_price, description, user_id, category_id) VALUES ('Snikers',
'https://target.scene7.com/is/image/Target/GUEST_211482e4-2703-42c0-b76a-55a6f23ba443?wid=488&hei=488&fmt=pjpeg', 100.67, 'snikers in good condition, barely used', 1, 1);

INSERT INTO ratings (product_rating, product_id) VALUES (4, 1)

  -- #show table of all users whether they have posts or not
  -- SELECT users.username AS person_name,
  -- products.description AS products_description
  -- FROM users FULL OUTER JOIN products
  -- ON users.id = products.user_id;