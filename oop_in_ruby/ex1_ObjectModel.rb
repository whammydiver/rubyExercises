
module Class_module # module names MUST be capitalized of you'll receive: "class/module name must be CONSTANT" error.
  def printsInput(input)
    puts input
  end
end

class NewClass
  include Class_module
end
  

newObject = NewClass.new

newObject.printsInput("Print This")
