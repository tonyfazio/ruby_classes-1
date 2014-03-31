module Punch
	def punch(person_to_be_punched)
		if @strength >= 5
			puts "#{person_to_be_punched.name} is flying in the air."
			person_to_be_punched.caffine_level-=5
		else
			puts "#{person_to_be_punched.scream} and #{person_to_be_punched.run}"
		end
		@caffine_level-=1
	end
end

class Person
	attr_accessor :caffine_level
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
				puts "Probably could use another cup of java."
			when 4..6
				puts "Riding high!"
			when 7..9
				puts "Let's ease up on the cafe son."
			when 10
				puts "To infinity and beyond"
			else
				puts "You need more caffine"
		end
	 	@caffine_level
	end

end

class PowerRanger <Person
	include Punch

	def initialize(name, caffine_level, strength, color)
		super(name, caffine_level)
		@strength = strength
		@color = color
	end


	def use_megazord(person_to_be_taken_down)
		puts "#{person_to_be_taken_down.name} is flying in the air."
		person_to_be_taken_down.caffine_level-=5000
	end

	def rest
		@caffine_level+=10
		puts "#{name} is sleeping."
	end
end

class EvilNinja <Person
	include Punch

	def initialize(name, caffine_level, strength, evilness)
		super(name, caffine_level)
		@strength = strength
		@evilness = evilness
	end

	def cause_mayhem(person_to_be_drained)
		person_to_be_drained.caffine_level==0
	end

end

def fight_scene(x,y,a,b,p,pp)
	x.cause_mayhem(p)
	y.cause_mayhem(pp)
	a.use_megazord(x) 
	b.punch(y)
end


don = Person.new("don", 10)
#/don.run/#
#/puts don.caffine_level/#

randy = PowerRanger.new("randy", 10, 55, "red")
#/randy.punch(don)/#
#/puts don.caffine_level/#

randy.use_megazord(don)
puts don.caffine_level


dan = Person.new("dan", 5)
alex = PowerRanger.new("alex", 10, 4, "pink")
jon = EvilNinja.new("jon", 4, 2, 3)
rick = EvilNinja.new("rick", 2,3,2)

#/fight_scene(jon, rick, randy, alex, don, dan)/#


