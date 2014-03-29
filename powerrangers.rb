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

class PowerRanger
end

class EvilNinja
end

don = Person.new("don", 3.4)
don.run
puts don.caffine_level