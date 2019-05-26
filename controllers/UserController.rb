class UserController < ApplicationController
	
	# shows sign up form
	get '/register' do
		erb :register
	end

	# do registration
	post '/register' do

	 #check if user exists
	 user = User.find_by username: params[:username]
	 #if user doesn't exist
	 
	 if !user 
	  user = User.new
	  # username = input from username
	  user.username = params[:username]
	  user.password = params[:password]
	  user.save

	  session[:logged_in] = true
	  session[:message] = user.username
	  session[:message] = {
	  	success: true,
	  	status: "good",
	  	message: "Welcome to the site, you are now logged in as #{user.username}"
	  }	

	 # redirect '/sale-now/products'
	 return "Welcome to Sale-Now #{user.username}"

	else 
		session[:message] = {
			success: false,
			status: "bad",
			message: "Sorry username #{params[:username]} is already taken"
		}
	return "Fuck you doesn't didn't signed up"
	 end
	end

	# shows login page 
	get '/login' do
		erb :login	
	end
end