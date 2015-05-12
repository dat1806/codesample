# inheritance.rb
class Pet
attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
def bark
 4.times do puts "meow" end
end
end

miu = Cat.new
miu.bark