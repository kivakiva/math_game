def result_prompt(answer, player_input)
  if answer == player_input
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