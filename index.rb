load 'player.rb'
load 'question.rb'
load 'game.rb'

def getNames()
  puts "Player 1 please enter your name"
  p1 = gets.chomp
  
  puts "Player 2 please enter your name"
  p2 = gets.chomp

  return [p1,p2]
end

# playerNames = getNames();
# game = Game.new(playerNames[0],playerNames[1])
game = Game.new("player 1","player 2")

while (game.isWinner() != true)
  question = Question.new
  question.askQuestion(game.current_player)
  question.checkAnswer(game)
  game.getScores() 

  if(!game.isEnd)
    game.setNextPlayer()
  end
end

