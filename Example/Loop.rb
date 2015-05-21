class Abc
	$i = 0
	$a = [1,2,3,4]
	def lop
		puts $a.length
		until $i > $a.length 
			puts $i
			$i+=1
		end
	end

	$u = 0
	def lap
		while $u < $a.length 
			puts $u
			$u+=1
		end
	end
end
b = Abc.new
puts "until loop"
b.lop

puts "While loop"
b.lap
