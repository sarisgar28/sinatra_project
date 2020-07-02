require_relative './config/env'

use Rack::MethodOverride
use CocktailsController
use UserController
use SessionsController
run ApplicationController