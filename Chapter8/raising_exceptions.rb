class BadDataException < RuntimeError
end

class Person
	def initialize(name)
		raise BadDataException, "No name present"
	end
end

a = Person.new("dat")