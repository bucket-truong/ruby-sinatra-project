# ruby-sinatra-project

WIRE FRAME

HOMEPAGE:
https://wireframe.cc/2hF6pa

CREATE:
https://wireframe.cc/BurJhI

MY LISTINGS-THIS WILL HAVE THE EDIT/UPDATE AND DELETE OPTION:
https://wireframe.cc/rRLFNG

USER STORY

-WHEN USERS REGISTER OR LOGIN THEY WILL NEED TO INPUT THEIR OWN UNIQUE USERNAME AND PASSWORD. THE USERNAME MUST NOT BE DUPLICATED 

-ONCE USERS HAVE CREATED AN ACCOUNT THEY WILL BE ABLE TO CREATE A LISTING IN A SEPARATE INDEX PAGE, EDIT/UPDATE THEIR OWN LISTINGS, AND DESTROY THEIR OWN LISTINGS.

-USERS WILL BE ABLE TO SEARCH ANY LISTINGS THAT ARE CURRENTLY AVAILABLE RELATIVE TO THE KEYWORD. THE SEARCHES WILL THEN APPEAR ON THE MAIN INDEX


API ENDPOINTS

Registration

POST /auth/register — register users

POST /auth/login  — login users

GET /auth/logout — logout users/destroy sessions

Website interaction
——————————————————————
#INDEX ROUTE

GET /products/items —  (home page) returns all products for sale (no matter if user is logged in or not)

===================================

#SHOW ROUTE - user clicks on item. Browser redirects user to show page of item to sale

GET /products/items/params { item.id } -- returns one item for sale

===================================

GET “NEW” FORM 

GET /products/new — returns form for creating an post 

===================================

#NEW ROUTE

POST /products/mylist — adding the product for sale to users list

===================================

**INDEX ROUTE FOR USERS ITEM LIST”

GET /products/mylist — returns list of user’s products to sale 

===================================

**EDIT ROUTE*
GET /products/edit/ params {item.id}  — returns EDIT form 
             
===================================

**UPDATE  ROUTE**
  PUT /products/ params { item.id } 

===================================

**DESTROY**

DELETE /products/ params { item.id } — deletes  product from users selling list



CREATE DATABASE sale_products;


\c sale_products


CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(32),
	password_digest VARCHAR(60)
)


CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	title VARCHAR (60),
	image VARCHAR (500),
	product_price DECIMAL (6, 2) NOT NULL,
	description VARCHAR (1000),
	user_id INTEGER REFERENCES users(id)
)



table USERS =>id, username, password_digest, Products => title, image, description, product_price,  user_id


==========================
bonuses

incorporate third party apis
