class MyStuff
	def initialize
		@tangerine = "abc"
		puts "apple"
	end

	attr_reader :tangerine

	def apple
		puts "I am classy apple!"
	end

end

a = MyStuff.new
a
a.apple
puts a.tangerine