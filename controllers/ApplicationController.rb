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
		}.to_jason
  	end
  	get '*' do
  		{
  		success: false,
		message: "404 page not found"
		}.to_jason
  		#halt 404--- look it up
  		
  	end


end