=begin
a = 10
b = "dbc"

begin 
	a + b
rescue Exception => e
	puts e
	puts "Could not add variables a (#{a.class}) and b (#{b.class})"
else
	puts "a +b is #{a+b}"
end
=end

class Abc
	attr_accessor :x

	def initialize(x)
		@x=x
	end

	def show
		puts x
	end

	def raise_and_rescue  
	  begin  
	    puts 'I am before the raise.'  
	    raise 'An error has occured.'  
	    puts 'I am after the raise.'  
	  rescue  
	    puts 'I am rescued.'  
	  end  
  	puts 'I am after the begin block.'  
	end 
end 
a = Abc.new(3)
a.raise_and_rescue  
a.show