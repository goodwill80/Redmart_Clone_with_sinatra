require 'rubygems'
require 'bundler'
Bundler.require

require './models/user'
require './models/purchase'
require './models/product'
require './models/order'
require './models/category'
require './models/brand'
require './app'

use Rack::MethodOverride
run Redmart_sinatraApp
