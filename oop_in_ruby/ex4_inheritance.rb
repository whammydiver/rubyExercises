class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello!!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

class GoodMonkey < Animal
  def speak
    super + " from the GoodMonkey class" # concatinates the inherited method. "super" indicated to copy the parent method.
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
  
  attr_accessor :name, :age, :details
  
  def details
    "My name is #{name} and I am #{age * 7} dog years old"
  end
end


sparky = GoodDog.new('Sparky')
paws = Cat.new('Tabbie')
monkman = GoodMonkey.new('Monkman')
rocco = BadDog.new(2, "Rocco")

# GoodDog defines .speak and overwrites the otherwise inherited .speak method that Cat receives from Animal
puts sparky.speak # "sparky says arf"
puts paws.speak # "Hello"
puts monkman.speak
puts rocco.details