class Location 

	attr_accessor :name, :lat, :long

	def initialize(name, lat, long)
		@name = name
		@lat = lat
		@long = long
	end

	def view_current
		forecast = ForecastIO.forecast(@lat, @long)
		puts "The forecast for #{@name} is: "
		puts forecast.currently[:summary]
		puts "    The current temp is: #{forecast.currently[:temperature]}"
		puts "    The real feel is: #{forecast.currently[:apparentTemperature]}"
	end

	def view_weekly
		forecast = ForecastIO.forecast(@lat, @long)
		puts "The weekly summary is: " 
		puts forecast.daily[:summary]
	end
end





