class Person
	def initialize(name, caffine_level = 0)
		@name= name
		@caffine_level = caffine_level.to_i
	end
	
	def run
		puts "On the road again..."
		@caffine_level-=2
	end

	def scream
		puts "Scream and shout and let it all out!"
		@caffine_level-=1
	end

	def drink_coffee
		@caffine_level+=1
	end

	def name
		@name
	end

	def caffine_level
		case @caffine_level
			when 0..3
				puts
			when 4..6
				puts
			when 7..9
				puts
			when 10
				puts
			else
				puts
		end
		puts @caffine_level
	end
end

class PowerRanger <Person
	def initialize(name, caffine_level, strength, color)
		super(name, caffine_level)
		@strength = strength
		@color = color
	end

	def punch(person_to_be_punched)
		if @strength >= 5
			puts "#{person_to_be_punched.name} is flying in the air."
			person_to_be_punched.caffine_level-=5
		else
			puts "#{person_to_be_punched.scream} and #{person_to_be_punched.run}"
		end
		@caffine_level-=1
	end

	def use_megazord(person_to_be_punched)
		puts "#{person_to_be_punched.name} is flying in the air."
		person_to_be_punched.caffine_level-=5000
	end

	def rest
	end
end

class EvilNinja
end

don = Person.new("don", 3.4)
don.run
puts don.caffine_level

randy = PowerRanger.new("randy", 10, 4, "red")
randy.punch(don)