a = %w{2 1 5 3 4}
b = 0
a.each do |i|
	i = i.to_i
	b = i if i > b	
end

puts b
puts a.min