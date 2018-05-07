require 'sinatra/base'
require 'sinatra/activerecord'


require './models/PokemonModel'

# controllers

require './controllers/ApplicationController'
require './controllers/PokemonController'

map('/') {
	run ApplicationController
}
map('/pokemon') {
	run PokemonController
}