print "Input file: "
file_name = gets.chomp
File.open(file_name, "a") do |f|
	f.puts "This is a test"
end

f = File.new(file_name,"a")
f.puts Time.now
f.close

f = File.open("text.txt", "r+")
f.putc "X"
f.close

#File.rename("text.txt", "abc.txt")

File.unlink("text1.txt")