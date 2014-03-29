class Car

	@@total_car_count = 0
	@@cars_per_color= Hash.new
	@@most_popular_color= nil

	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color)
		@fuel = 10
		@distance = 0
		@color = color
		@@total_car_count+= 1
		if @@cars_per_color.include?(color)
			@@cars_per_color[color]+=1
		else
			@@cars_per_color[color] = 1
		end
	end

	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end

	def self.total_car_count
		@@total_car_count
	end

	def self.cars_per_color
		@@cars_per_color
	end

	def color
		@color
	end

	def self.most_popular_color
		popular= @@cars_per_color.max_by {|x,y| y}
		@@most_popular_color= popular[0]
		@@most_popular_color
	end

	def color=(value)
		if @color != value
			@@cars_per_color[@color]-= 1
			@color = value
			@@cars_per_color[@color]+= 1
		else
			@color
		end
	end
end


class ConvertibleCar < Car
	
	def initialize(color)
		super
		@roof_status = "open"
	end

	def roof_status
		@roof_status
	end

	def top_down
		if @roof_status == "closed"
			@roof_status = "open"
			puts "Right on brother! Pop that top! Let the wind blow!"
		else
			puts "You must be having such a great time that you forgot the top is already down!"
			@roof_status = "open"
		end
	end

	def close_top
		if @roof_status == "open"
			@roof_status = "closed"
			puts "Rain not a friend of leather. Way to do your car a solid!"
		else
			puts "Calm down dog. Roof is not on fire. It is already closed."
			@roof_status = "closed"
		end
	end
end

puts Car.total_car_count
car_a = Car.new("red")
puts Car.total_car_count
car_b = Car.new("pink")
puts car_a.color
puts Car.cars_per_color
puts Car.total_car_count
puts car_a
puts car_b
car_a.color = "pink"
puts Car.cars_per_color
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b
car_cool = Car.new(Car.most_popular_color)
puts car_cool.color

car_c = ConvertibleCar.new("blue")
puts car_c

#/This lets the user type in the color to create an instance of car/#
erin_color = gets.chomp
car_erin= Car.new(erin_color)
puts "Erin's car is #{car_erin.color}"
