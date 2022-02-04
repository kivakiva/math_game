require player_prompt
require result_prompt
require state

def turn
  player_prompt()
  print "> "
  player_input = $stdin.gets.chomp.to_i
  answer = @num_1 + @num_2
  result_prompt(answer, player_input)
  if (@lives[:player_two] == 0)
    puts "Player one wins with a score of #{@lives[:player_one]}/3"
    puts "---- GAME OVER ----"
    exit(0)
  elsif (@lives[:player_one] == 0)
    puts "Player two wins with a score of #{@lives[:player_two]}/3"
    puts "---- GAME OVER ----"
    exit(0)
  else
    change_player
    change_nums
    puts "---- NEW TURN ----"
    turn()
  end
end

turn()