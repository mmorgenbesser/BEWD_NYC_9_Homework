#select location 
#use stored lat and long get current forecast for that location
#enter lat and long 
#get current real feel
#daily (weather for the week)


require 'forecast_io'
require_relative 'lib/location'


ForecastIO.configure do |configuration|
  configuration.api_key = 'd5c03ba012e50be70df231a496db0338'
end

def create_location
	puts "-----MVP Weather-----"
	puts "What is the city?"
	name = gets.strip.upcase

	puts "What is the latitude?"
	lat = gets.to_i

	puts "What is the longitude?"
	long = gets.to_i

	Location.new(name, lat, long)
end

location = create_location

puts "Would you like to see the [current] forecast or [weekly] summary?"
response = gets.strip.downcase
case response
 when 'current' then location.view_current  
 when 'weekly' then location.view_weekly 
 else puts "Sorry, I dont know '#{response}'"    
 end

