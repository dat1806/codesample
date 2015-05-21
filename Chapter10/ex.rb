class A
	attr_accessor :name, :age

	def initialize(name,age)
		@name = name
		@age = age
	end
	
	def show
		puts "You are #{name}, #{age}"
	end
end

dat = A.new("dat", 21)
puts dat.name
dat.show
