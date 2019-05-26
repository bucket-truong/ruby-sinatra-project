class UserController < ApplicationController
	
	get '/register' do
		erb :register
	end

	get '/login' do
		erb :login	
	end
end