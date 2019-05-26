INSERT INTO users (username, password_digest) VALUES ('Jim', '23slkdlgk');
INSERT INTO users (username, password_digest) VALUES ('Rich', '3412mdfg');

INSERT INTO products (title, image, product_price, description, user_id) VALUES ('Iphone 6',
'https://target.scene7.com/is/image/Target/GUEST_211482e4-2703-42c0-b76a-55a6f23ba443?wid=488&hei=488&fmt=pjpeg', 355.67, 'iphone 6 in good condition, barely used', 2);



  #show table of all users whether they have posts or not
  SELECT users.username AS person_name,
  products.description AS products_description
  FROM users FULL OUTER JOIN products
  ON users.id = products.user_id;