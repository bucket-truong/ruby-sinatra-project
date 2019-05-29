class ProductController < ApplicationController



get '/' do
    # user = User.find_by({
    #   :username => session[:username]
    #   })
    #   @items = user.items
      erb :products_index
end

# get '/:id/edit' do
#   @item = Item.find params[:id]
#   erb :products_edit
# end

post '/' do
  new_products = Item.new
  new_products.content[:content]
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

end
