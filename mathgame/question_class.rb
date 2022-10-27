class Question 

  def initialize
    @first_num = get_random_number
    @second_num = get_random_number
    @sum = @first_num + @second_num
  end

  def question
    "What does #{@first_num} plus #{@second_num} equal? \n > "
  end

  def answer_check(number)
    if number == @sum
      true
    else
      false
    end
  end

end
