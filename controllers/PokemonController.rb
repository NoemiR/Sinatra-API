class PokemonController < ApplicationController
	
#index route
	get '/' do 
		@pokemon = Pokemon.all
		 { 
		 	success: true,
		 	message: "Found all #{@pokemon.length}",
		 	pokemon: @pokemon
		 }.to_json

	end
#show
	get '/:id' do 
		@pokemon = Pokemon.find(params[:id])
		 { 
		 	success: true,
		 	message: "Found pokemon #{@pokemon.name}",
		 	pokemon: @pokemon
		 }.to_json

	end
#create
	post '/' do 
		@pokemon = Pokemon.new
		@pokemon.name = params[:name]
		@pokemon.save
		 { 
		 	success: true,
		 	message: "Created #{@pokemon.name}",
		 	pokemon: @pokemon
		 }.to_json

	end
#delete
	delete '/:id' do 
		@pokemon = Pokemon.find(params[:id])
		@pokemon.destroy 
	
		 { 
		 	success: true,
		 	message: "Deleted #{@pokemon.name}",
		 	pokemon: @pokemon
		 }.to_json

	end

	put '/:id' do
		
		@pokemon = Pokemon.find(params[:id]) 

		
		@pokemon.name = params[:name]
		@pokemon.save
		
		{
			success: true,
			message: "You updated item \##{@pokemon.id}",
			updated_item: @pokemon
		}.to_json
	end


end