# @lives = {
#   player_one: 3,
#   player_two: 3
# }

# @current_player = 1


# @num_1 = rand(10)

# @num_2 = rand(10)

# def player_prompt
#   puts "Player #{@current_player}: What does #{@num_1} plus #{@num_2} equal?"
# end

# def result_prompt(answer, player_input)
#   if answer == player_input
#     puts "Player #{@current_player}: You are correct"
#   else
#     puts "Player #{@current_player}: You're wrong"
#     if (@current_player == 1)
#       @lives[:player_one] -= 1
#     else
#       @lives[:player_two] -= 1
#     end
#   end
#   puts "P1: #{@lives[:player_one]}/3 vs P2: #{@lives[:player_two]}/3"
# end

# def change_player
#   @current_player == 1 ? @current_player = 2 : @current_player = 1
# end

# def change_nums
#   @num_1 = rand(10)
#   @num_2 = rand(10)
# end

# def turn
#   #prompt question
#   #set answer
#   #get input
#   #compare answer to problem
#   #update lives
#   #prompt result 
#   #prompt score
#   #check for game over
#   #if game over game over else new turn
#   player_prompt()
#   print "> "
#   player_input = $stdin.gets.chomp.to_i
#   answer = @num_1 + @num_2
#   result_prompt(answer, player_input)
#   if (@lives[:player_two] == 0)
#     puts "Player one wins with a score of #{@lives[:player_one]}/3"
#     puts "---- GAME OVER ----"
#     exit(0)
#   elsif (@lives[:player_one] == 0)
#     puts "Player two wins with a score of #{@lives[:player_two]}/3"
#     puts "---- GAME OVER ----"
#     exit(0)
#   else
#     change_player
#     change_nums
#     puts "---- NEW TURN ----"
#     turn()
#   end
# end

# turn()

