class Foo
  private
  def name
    "Who is calling me? #{self.class}"
  end
end
 
class Bar < Foo
  def call_parent_method_name
    # implicit receiver
    puts name
 
    # explicit receiver
    puts self.name rescue puts 'NoMethodError'
    # explicit receiver
    puts Foo.new.name rescue puts 'NoMethodError'
  end
end
 
Bar.new.call_parent_method_name