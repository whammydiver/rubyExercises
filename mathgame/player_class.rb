class Player 

  def initialize(number)
    @name = "Player #{number.to_s}"
    @lives = 3

  end
  
  attr_reader :name, :lives

  def lose_a_life
    @lives -= 1
  end
  
end