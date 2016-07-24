# NO NEED TO CHANGE THIS
require 'rubygems'
require 'bundler'
Bundler.require

# THIS IS THE MODEL
require './models/user'
require './models/product'
# THIS IS THE CONTROLLER
require './app'
require './controllers/products'
require './controllers/users'

# CLASS REFERS TO THE CLASS NAME IN app.rb
use Rack::MethodOverride
run RedmartSinatraApp
