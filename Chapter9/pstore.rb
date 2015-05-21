class Person
	attr_accessor :name, :job, :gender, :age
end

dat = Person.new
dat.name = "Do Thanh Dat"
dat.age = 21

laura = Person.new
laura.name = "Laura Smith"
laura.age = 23

require 'pstore'
store = PStore.new("storagefile")
store.transaction do
	store[:people] ||= Array.new
	store[:people] << dat
	store[:people] << laura
end