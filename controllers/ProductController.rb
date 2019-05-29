class ProductController < ApplicationController



  get '/' do
      user = User.find_by({
        :username => session[:username]
        })
        @products = user.products
        erb :products_index
  end

  get '/:id/edit' do
    @product = product.find params[:id]
    erb :products_edit
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
    new_products.save
    session[:message] = {
      success: true,
      status: "good",
      message: "Listing has been posted!"
    }
    redirect '/products'
  end

  get '/new' do
    erb :product_new
  end

  put '/:id' do
    prod = Product.find params[:id]
    prod.content = params[:content]
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
  after do
    puts "after filter"
  end
end
