require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/UserController'
require './controllers/CategoryController'


require './models/CategoryModel'
require './models/ProductModel'
require './models/UserModel'


map ('/') {
	run ApplicationController
}

map ('/auth') {
	run UserController
}

