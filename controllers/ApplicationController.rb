class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

	

	ActiveRecord::Base.establish_connection(
 		:adapter => 'postgresql', 
 		:database => 'pokemon'
	)
	
	

	get '/' do
		{
		success: false,
		message: "Please consult the API documentations"
		}.to_json
  	end
  	get '*' do
  		{
  		success: false,
		message: "404 page not found"
		}.to_json
  		#halt 404--- look it up
  		
  	end


end