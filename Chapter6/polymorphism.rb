class Animal
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end

class Cat < Animal
	def talk
		"Meaow!"
	end
end

class Dog < Animal
	def talk
		"Woof!"
	end
end

class Labrador < Dog
end
animals = [Cat.new("Flossie"), Dog.new("Fido"), Cat.new("Tinkle"),Labrador.new("Su")]
animals.each do |animal|
puts animal.talk
end