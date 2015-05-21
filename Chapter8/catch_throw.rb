def generate_random_number_except_123
x = rand(1000)
throw :abc if x == 123
end

catch(:abc) do
	1000.times {generate_random_number_except_123}
	puts "Generated 1000 random numbers without generating 123"
end