filename = ARGV.first

puts "We' re going to erase #{filename}"
puts "If you don't want that, hit ctrl-c (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file ..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

File.open("text.txt").each { |line| puts line }

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp

puts "I' going to write these to the file."

target.write(line1)
puts "And finally, we close it."
target.close