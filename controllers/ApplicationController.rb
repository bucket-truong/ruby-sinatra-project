class ApplicationController < Sinatra::Base

  require 'bundler'

  Bundler.require()

  enable :sessions

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'sale_products'
  )

  use Rack::MethodOverride
  set :method_override, true

  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  get '/' do
    redirect '/auth/login'
  end

  get '/test' do
    binding.pry
    'hello world'
  end

  # get '*' do
  #   halt 404
  # end

end
