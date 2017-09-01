require "sinatra"
require "sinatra/reloader" if development?
require "./controllers/static_controller.rb"
require "./controllers/user_controller.rb"

use Rack::MethodOverride

use StaticController
run UserController