# ruby-sinatra-project

wire frame 
https://wireframe.cc/2hF6pa

This app will allow users to register an account and log in. Once logged in, they are able to create listings for items they want to sell. With their listings they can edit/update and delete them as well. They will also be able to search any for any availabe listings by keyword through the search bar.

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
