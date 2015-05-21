require 'yaml'

class Person
	attr_accessor :name, :age
end

dat = Person.new
dat.name = "Do Thanh Dat"
dat.age = 21

laura = Person.new
laura.name = "Laura Smith"
laura.age = 23

test_data = [dat, laura]

puts YAML::dump(test_data)