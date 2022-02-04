require './state'


@newGame = State.new

class Prompt

  def self.question
      puts "Player #{@newGame.current_player}: What does #{@newGame.num_1} plus #{@newGame.num_2} equal?"
  end

  def self.result(answer, player_input)
    if answer == player_input
      puts "Player #{@newGame.current_player}: You are correct"
    else
      puts "Player #{@newGame.current_player}: You're wrong"
      if (@newGame.current_player == 1)
        @newGame.lives[:player_one] -= 1
      else
        @newGame.lives[:player_two] -= 1
      end
    end
    puts "P1: #{@newGame.lives[:player_one]}/3 vs P2: #{@newGame.lives[:player_two]}/3"
  end

end