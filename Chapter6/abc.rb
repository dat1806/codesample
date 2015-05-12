module ToolBox
	class Ruler
		attr_accessor :length
		def show 
			puts length
		end
	end
end
module Country
	class Ruler
		attr_accessor :name
		def show
			puts name
		end	
	end
end
a = ToolBox::Ruler.new
a.length = 50
a.show
b = Country::Ruler.new
b.name = "Ghengis Khan of Moskau"
b.show
include Country
c = Ruler.new
c.name = "King Henry VIII"
c.show