class ProductController < ApplicationController


  get '/' do
      user = User.find_by({
        :username => session[:username]
        })
        @products = user.products
        erb :products_index
  end

  get '/:id/edit' do
    @product = Product.find params[:id]
    erb :product_edit
  end

  post '/' do
    new_products = Product.new
    new_products.title = params[:title]
    new_products.product_price = params[:price]
    new_products.description = params[:description]
    new_products.image = params[:image]
    logged_in_user = User.find_by ({
      :username => session[:username]
    })

    new_products.user_id = logged_in_user.id
    new_products.category_id = params[:category].to_i
    new_products.save
    session[:message] = {
      success: true,
      status: "good",
      message: "Listing has been posted!"
    }

    redirect '/products'
  end

  get '/new' do
    @category = Category.all
    erb :product_new
  end

  put '/:id' do
    prod = Product.find params[:id]
    prod.title = params[:title]
    prod.product_price = params[:product_price]
    prod.description = params[:description]
    prod.save
    session[:message] = {
      success: true,
      status: "good",
      message: "Listed has been updated"
    }
    redirect '/products'
  end

  delete '/:id' do
    product = Product.find params[:id]
    product.destroy
    session[:message] = {
      success: true,
      status: "good",
      message: "Listing has been deleted"
    }
    redirect '/products'
  end

  get '/all-list' do
    @products = Product.all
    @category = Category.all
    erb :all_list_index
  end

  get '/category/:id' do
    @product = Product.where :category_id => params[:id]
    erb :category_show
  end

  get '/all-list/:id' do 
    @product = Product.find params[:id]
    rating = Rating.where :product_id => [:id]
    # find all ratings for current product
    # find average number for rating
    erb :products_show
  end

  post '/rating/:id' do
    # Create new rating
    rating = Rating.new
    rating.product_rating = params[:rating]
    rating.product_id = params[:id]
    rating.save
    redirect '/products/all-list'
  end

  after do
    puts "after filter"
  end
end
