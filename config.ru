require 'sinatra/base'
require 'sinatra/activerecord'

# controllers

require './controllers/ApplicationController'
require './controllers/PokemonController'

map('/') {
	run ApplicationController
}
map('/Pokemon') {
	run PokemonController
}