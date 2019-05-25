# ruby-sinatra-project

wire frame 

HOMEPAGE:
https://wireframe.cc/2hF6pa

CREATE:
https://wireframe.cc/BurJhI

MY LISTINGS-THIS WILL HAVE THE EDIT/UPDATE AND DELETE OPTION:
https://wireframe.cc/rRLFNG

-WHEN USERS REGISTER OR LOGIN THEY WILL NEED TO INPUT THEIR OWN UNIQUE USERNAME AND PASSWORD. THE USERNAME MUST NOT BE DUPLICATED 
-ONCE USERS HAVE CREATED AN ACCOUNT THEY WILL BE ABLE TO CREATE A LISTING, EDIT/UPDATE THEIR OWN LISTINGS, AND DESTROY THEIR OWN LISTINGS.
-USERS WILL BE ABLE TO SEARCH ANY LISTINGS THAT ARE CURRENTLY AVAILABLE RELATIVE TO THE KEYWORD  


API ENDPOINTS

Registration

POST /auth/register — register users

POST /auth/login  — login users

GET /auth/logout — logout users/destroy sessions

Website interaction
——————————————————————
#INDEX ROUTE

GET /sale-now/items —  (home page) returns all products for sale (no matter if user is logged in or not)

===================================

#SHOW ROUTE - user clicks on item. Browser redirects user to show page of item to sale

GET /sale-now/items/params { item.id } -- returns one item for sale

===================================

GET “NEW” FORM 

GET /sale-now/new — returns form for creating an post 

===================================

#NEW ROUTE

POST /sale-now/mylist — adding the product for sale to users list

===================================

**INDEX ROUTE FOR USERS ITEM LIST”

GET /sale-now/mylist — returns list of user’s products to sale 

===================================

**EDIT ROUTE*
GET /sale-now/edit/ params {item.id}  — returns EDIT form 
             
===================================

**UPDATE  ROUTE**
  PUT /sale-now/ params { item.id } 

===================================

**DESTROY**

DELETE /sale-now/ params { item.id } — deletes  product from users selling list
