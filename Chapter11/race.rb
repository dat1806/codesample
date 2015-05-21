threads = []
5.times do |i|
thread = Thread.new do 
	5.times do 
		x = rand(20)
		#puts "x"
		sleep rand(4)
		Thread.exit if x == 7 || x == 14
	end
	puts "Car #{i}"
end
threads << thread
end
=begin
thread2 = Thread.new do
	10.times do 
		x = rand(10)
		#puts "b"
		sleep rand(5)
		Thread.pass if x == 5
	end
	puts "Ngua 2"
end

thread.join
thread2.join
=end
threads.each { |thread| thread.join}