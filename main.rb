# require './prompt'
require'./state'

newGame = State.new

def turn (game)

  game.question
  print "> "
  game.player_input = $stdin.gets.chomp.to_i
  game.result
  if (game.lives[:player_two] == 0)
    puts "Player one wins with a score of #{game.lives[:player_one]}/3"
    puts "---- GAME OVER ----"
    exit(0)
  elsif (game.lives[:player_one] == 0)
    puts "Player two wins with a score of #{game.lives[:player_two]}/3"
    puts "---- GAME OVER ----"
    exit(0)
  else
    game.change_player
    game.change_nums
    puts "---- NEW TURN ----"
    turn(game)
  end
end

turn (newGame)