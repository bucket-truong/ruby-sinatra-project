require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/UserController'

require './models/ProductModel'
require './models/UserModel'

map ('/') {
	run ApplicationController
}

map ('/auth') {
	run UserController
}