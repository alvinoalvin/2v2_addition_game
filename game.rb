class Game
  @players;
  attr_reader :current_player, :maxPoints
  attr_accessor :isEnd

  def initialize(player1, player2)
    player1 = Player.new(player1)
    player2 = Player.new(player2)
    
    @current_player = player1
    @players = [player1, player2]
    setMaxPoints()
  end

  def setMaxPoints()
    puts "Please enter the maximum number of points."
    @maxPoints = gets.chomp;
  end

  def setNextPlayer()
    if (@current_player.name == @players[0])
      @current_player = @players[0]
    else
      @current_player = @players[1]
    end
  end

  def isWinner()
    if (isEnd)
      puts "\n---- GAME OVER ----"
      puts "#{@current_player.name}: IS THE WINNER! What a nerd LMAO\n"
      
      return true;
    end

    return false;
  end

  def getScores()
    puts "#{@players[0].name}: #{@players[0].points}/#{@maxPoints} vs #{@players[1].name}: #{@players[1].points}/#{@maxPoints}"
  end
end
