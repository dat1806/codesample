def callbacks(procs)
	procs[:first].call(2)

	puts "Still going"
	procs[:second].call

	procs[:third].call

end

callbacks(:first => Proc.new {|i,m| puts i, m.class},
			:second => Proc.new {puts 2+3},
				:third => Proc.new {puts 3+3})