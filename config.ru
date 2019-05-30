require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/ProductController'
require './controllers/UserController'
require './controllers/CategoryController'


require './models/CategoryModel'
require './models/ProductModel'
require './models/UserModel'
require './models/RatingMOdel'

map ('/') {
	run ApplicationController
}
map ('/products') {
	run ProductController
}

map ('/auth') {
	run UserController
}

