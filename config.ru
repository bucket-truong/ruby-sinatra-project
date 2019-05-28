require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/ProductController'
require './controllers/UserController'

require './models/ProductModel'
require './models/UserModel'

map ('/') {
	run ApplicationController
}
map ('/products') {
	run ProductController
}

map ('/auth') {
	run UserController
}
