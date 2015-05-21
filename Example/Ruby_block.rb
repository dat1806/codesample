class Abc
def call_block
	puts 'Start of method'
	#can call the block using the yield keyword
	yield(3)
	yield(4)
	puts 'End of method'
end
end
a = Abc.new
a.call_block {|i| puts i}	
a.call_block {1.times do puts "hello" end}
