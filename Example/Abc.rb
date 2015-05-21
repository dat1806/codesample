def save_for_later(&b)
  @a = b  # Note: no ampersand! This turns a block into a closure of sorts.
end
 
save_for_later { puts "Hello!" }
puts "Deferred execution of a block:"
@a.call
@a.call



@saved_proc_new = Proc.new { puts "I'm declared with Proc.new." }
@saved_proc = proc { puts "I'm declared with proc." }
@saved_lambda = lambda { puts 2+3 }
def some_method
  puts "I'm declared as a method."
end
@method_as_closure = method(:some_method)
 
puts "Here are four superficially identical forms of deferred execution:"
@saved_proc_new.call
@saved_proc.call
@saved_lambda.call
@method_as_closure.call