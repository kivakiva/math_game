class State
  attr_accessor :num_1, :num_2, :lives, :current_player, :player_input
  attr_reader :question, :result
  def initialize
    @lives = {
      player_one: 3,
      player_two: 3
    }
    @num_1 = rand(10)
    @num_2 = rand(10)
    @current_player = 1
    @player_input = 0
  end

  def question
    puts "Player #{@current_player}: What does #{@num_1} plus #{@num_2} equal?"
  end

  def result
    answer = @num_2 + @num_1
    puts answer
    puts @player_input
    if answer == @player_input
      puts "Player #{@current_player}: You are correct"
    else
      puts "Player #{@current_player}: You're wrong"
      if (@current_player == 1)
        @lives[:player_one] -= 1
      else
        @lives[:player_two] -= 1
      end
    end
    puts "P1: #{@lives[:player_one]}/3 vs P2: #{@lives[:player_two]}/3"
  end

  def change_player
    @current_player == 1 ? @current_player = 2 : @current_player = 1
  end
  
  def change_nums
    @num_1 = rand(10)
    @num_2 = rand(10)
  end

end
