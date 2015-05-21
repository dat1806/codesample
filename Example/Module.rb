module Abc
	#Constant varialbe
	Con = "abc"
	def Abc.a
		puts "in ra"
	end
	module B
		$c = Module.nesting
		def B.nesting
			puts "nesting"
		end
	end
end
Abc::B.nesting
Abc.a
puts Abc::Con
(1..3).collect do |i| i.inspect end
(1..4).collect {|i| i.inspect}

