class Car
	def initialize(fuel, distance)
		@fuel=fuel
		@distance=distance
		case @fuel
			when 11..100
				@fuel=10
			when 10
				puts "The fuel tank is full."
			when 1...10
				puts "The fuel level is at #{@fuel} gallons."
			when 0
				puts "You are out of gas. Buy more fuel."
			else
				puts "Keep on truckin!"
			end
	end

	def get_info
		"I am a car! I've driven #{@distance} miles and have #{@fuel} gallons of gas left."
	end


	def drive(miles, mpg)
		@fuel-=(miles/mpg)
		@distance+=miles
	end

	def fuel_up(gas, gas_price=3.50)
		@fuel+=gas
		puts "$ #{gas*gas_price.to_f}"
		if @fuel> 10
			refund= (@fuel - 10)*gas_price
			puts "Oops we charged you for too much gas. Here is $ #{refund} back. The correct charge is $ #{(gas*gas_price.to_f)-refund}"
			@fuel=10
		end
	end
end

carA=Car.new(11, 20)
puts carA.get_info
carA.drive(10,5)
puts carA.get_info
carA.fuel_up(10)
puts carA.get_info
