mark = 6.5
result = case mark
	when 0..4 then "Fail"
	when 4..6 then "Pass"
	when 6..8 then "Good"
	when 9..10 then "Very Good"
	else "Invalid Mark"
end
puts result