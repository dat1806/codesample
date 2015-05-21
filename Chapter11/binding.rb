def binding_elsewhere
	x = 20
	y = 30
	return binding
end

x = 10
eval("puts x")
eval("puts x, y", binding_elsewhere)
eval("x = 10")
eval("x = 50", binding_elsewhere)
eval("puts x")
eval("puts x", binding_elsewhere)