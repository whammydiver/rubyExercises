# class GoodDog
#   def initialize
#     puts "This object was initialized!"
#   end
# end

# sparky = GoodDog.new

class GoodDog
  
  attr_accessor :name, :height, :weight # short form way to tell ruby to create getter and setter methods for the object key specified
  # attr_reader :keyName // creates a getter, no setter
  # attr_writer :keyName // creates a setter, no getter
  # attr_* :keyOne, :keyTwo, :keyThree // if mutlipe getters or setters are needed.
  
  # def name # long form name getter method
  #   @name
  # end
  
  # def name=(n) #long form name setter method
  #   @name = n
  # end

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
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
  
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")

puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')

puts sparky.info

class MyCar
  def initialize(year, model, colour)
    @year = year
    @colour = colour
    @model = model
    @speed = 0
  end

  attr_accessor :colour
  attr_reader :year

  def speed_up(number)
    @speed += number
    puts "you push the gas and accelerate #{number} kph."
  end

  def brake(number)
    if @speed < number
      @speed = 0
      puts "you push the brake and slow down to a stop"
    else
      @speed -= number
      puts "you push the brake and reduce your speed by #{number} kph."
    end
  end

  def current_speed
    puts "You are travelling at #{@speed} kph."
  end

  def shut_off
    @speed = 0
    puts "Let's park this bad boy"
  end

  def spray_paint(colour)
    self.colour = colour
  end

end  

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
lumina.current_speed

puts "Lumina Colour: #{lumina.colour}"
puts "Lumina Year: #{lumina.year}"
lumina.spray_paint("green")
puts "Lumina Colour: #{lumina.colour}"