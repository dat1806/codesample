class Abc
	attr_accessor :a, :b, :c
	
	def initialize
		print "what is your name?"
		print ">" 
		@a = gets.chomp
		print "How old are you?"
		print ">"
		@b = gets.chomp.to_i
		print "Input file: "
		@c = gets.chomp
		target = open(c,'w')
		d = "Hi #{a}, you are #{b} years old"
		target.write(d)
		target.close
	end
	
	def callback(procs)
		procs[:first].call(a,b)
		procs[:second].call(b)
		puts "Saved"
		File.open(@c).each {|line| puts line}
	end
	
	def rubyblock
		yield (b)
	end

end
r = Abc.new
r.callback(:first => Proc.new {|a,b| puts "Hi #{a}, you are #{b} years old"},
			:second => Proc.new do |b| if b < 30 
						puts "You are young" 
					else 
						puts "you are old" 
					end
				end)
r.rubyblock{|i| puts "you were born in #{Time.now.year - i}"}