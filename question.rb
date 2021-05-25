class Question
  attr_reader :num1, :num2
  @answer
  @sum

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = (@num1 + @num2)
  end

  def askQuestion(current_player)
    puts "\n---- NEW TURN ----"
    puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
    @answer = gets.chomp;
  end
  
  def checkAnswer(game)
    if @answer.to_i == @sum.to_i
      puts "\n#{game.current_player.name}: YAY, YOU'RE CORRECT!"
      game.current_player.points+=1

      if(game.current_player.points.to_i == game.maxPoints.to_i)
        game.isEnd = true;
      end

    else
      puts "\n#{game.current_player.name}: HA HA! WRONG ANSWER, You've activated my trap card!"
    end
  end 
end