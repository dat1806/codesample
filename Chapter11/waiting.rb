a = fork do 
	sleep 3 #3 second delay
	puts "Child says 'hi' !"
end

puts "Waiting for the child process..."
Process.wait a
puts "All done!"