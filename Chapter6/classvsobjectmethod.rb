class Square
   def self.test_method # class method
      puts "Hello from the Square class!"
   end
   def test_method  #object method
      puts "Hello from an instance of class Square!"
   end
   def method_missing(m, *args, &block) #method missing
    puts "There's no method called #{m} here -- please try again."  
  end  
end


Square.test_method

a = Square.new
a.abc
a.test_method
