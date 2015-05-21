handle = IO.popen("test", "r+")

handle.readlines.each do |l|
	p l
end
#while line = handle.gets
#	puts line
#end