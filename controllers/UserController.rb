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
	  session[:username] = user.username
	  session[:message] = {
	  	success: true,
	  	status: "good",
	  	message: "Welcome to the site, you are now logged in as #{user.username}"
	  }

	 # redirect '/products/products'
	 # return "Welcome to products #{user.username}"
	 redirect '/products/all-list'
	else
		session[:message] = {
			success: false,
			status: "bad",
			message: "Sorry username #{params[:username]} is already taken"
		}
	redirect '/products/all-list'
	 end
	end

	# shows login page
	get '/login' do
		erb :login
	end

	# do login

	post '/login' do
  	 user = User.find_by username: params[:username]
  	 pw = params[:password]

  	 if user && user.authenticate(pw)
  	 	session[:logged_in] = true
  	 	session[:username] = user.username
  	 	session[:message] = {
  	 		success: true,
  	 		status: "good",
  	 		message: "logged in as #{user.username}"
  	 	}

  	 	redirect '/products/all-list'

  	  else
      # error -- incorrect un or pw
      session[:message] = {
        success: false,
        status: "bad",
        message: "Invalid username or password."
      }

      # redirect to /login so they can reattempt
      redirect '/auth/login'
	 end
	end

	# logout
	get '/logout' do
		username = session[:username]
		session.destroy
		session[:message] = {
			success: true,
			status: "neutral",
			message: "User #{username} loggedout"
		}
		redirect '/auth/login'
	end
end
