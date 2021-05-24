class question()
  @num1;
  @num2;

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def getQuestion()
    puts "What does #{num1} plus #{num2} equal?"
  end
  
  def checkAnswer(currPlayer, answer, maxPoints)
    if(answer == sum)
      puts "CONGRATS, YOU'RE CORRECT!"
      currPlayer.addPoints()
    else
      puts "HA HA! You've fallen for my trap card!"
    end
  end 
end

  