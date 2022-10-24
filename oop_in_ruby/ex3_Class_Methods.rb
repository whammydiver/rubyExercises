class GoodDog

  DOG_YEARS = 7

  @@number_of_dogs = 0

  def self.total_number_of_dogs
    @@number_of_dogs
  end
  
  attr_accessor :name, :height, :weight, :age 

  def initialize(n, h, w, a)
    @name = n
    @height = h
    @weight = w
    @age = a * DOG_YEARS
    @@number_of_dogs += 1
  end
  
  def speak
    "#{name} says Arf!"
  end
  
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
  
end

puts GoodDog.total_number_of_dogs

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 4)
beano = GoodDog.new("Beano", "18 inches", "30 lbs", 6)

puts GoodDog.what_am_i

puts GoodDog.total_number_of_dogs

puts sparky.age

puts sparky
p sparky
pp sparky


