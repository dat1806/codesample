user = ARGV.first
prompt = '> '

puts "Hi #{user}, I am the #{$0} script."
puts "I' d like to ask you a few questions."
puts "Do you like me, #{user}?"
print prompt
likes = gets.chomp()

puts "Where do you live, #{user}?"
print prompt
lives = gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
MESSAGE