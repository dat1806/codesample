class Parent
	def initialize (name,age)
		@name = name
		@age = age
	end
	def test
		puts @name
	end
end

class Children < Parent
	def test
		puts "hi"
		super
		super
		super
	end
end

a = Children.new("dat","21")
a.test