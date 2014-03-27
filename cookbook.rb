class Cookbook
	attr_accessor :title; :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def title
		@title 
	end

	def title= (new_title)
		@title = new_title
	end

	def recipes
		@recipes
	end

	def add_recipes(x)
		@recipes<<x
		puts "#{x.title} was added to #{@title}."
	end

	def recipe_titles
		@recipes.each {|x| puts x.title}
	end

	def recipe_ingredients
		@recipes.each {|x| puts "These are the ingredients for #{x.title} : #{x.ingredients} ."}
	end
end

class Recipe
	attr_accessor :ingredients;:title; :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def title
		@title
	end

	def ingredients
		@ingredients
	end

	def steps
		@steps
	end

	def title= (new_title)
		@title = new_title
	end

	def steps= (new_steps)
		@steps = new_steps
	end

	def ingredients= (new_ingredients)
		@ingredients = new_ingredients
	end
end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla","bean"], ["heat beans", "place beans in tottilla", "roll up"])
puts burrito.title
p burrito.ingredients
p burrito.steps

mex_cuisine.title= "Mexican Recipes"
p mex_cuisine.title

burrito.title= "Veggie Burrito"
burrito.ingredients= ["tottilla", "tomatoes"]
burrito.steps= ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title
p burrito.ingredients
p burrito.steps

mex_cuisine.recipes
mex_cuisine.add_recipes(burrito)
puts mex_cuisine.recipes

mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients
