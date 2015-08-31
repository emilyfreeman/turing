# class Person
#   def initialize(name, tattoos, hair_color, shoe_size)
#     @person_name = name
#     @person_tattoos = tattoos
#     @person_hair_color = hair_color
#     @person_shoe_size = shoe_size
#   end
#
# def tattoos=(num)
#   @person_tattoos = num
# end
#
# jon.tattoos =+ 1



class Code
  # This (attr_accessor) allows us to not have to write a method
   # just to return @secret_code
  attr_accessor :secret_code
  attr_accessor :valid_chars

  def initialize(length, valid_chars)
    @code_length = length
    @valid_chars = valid_chars
    @secret_code = []
    self.generate_secret_code
  end

  def generate_secret_code
    @code_length.times{ |i| @secret_code << @valid_chars.shuffle.sample }
  end
end

beginner_chars = ["R", "Y", "B", "G"]
intermediate_chars = ["R", "Y", "B", "G", "P"]
advanced_chars = ["R", "Y", "B", "G", "P", "O"]

  if level == "Advanced"
    my_game = Code.new( 2, beginner_chars )
  elsif level == "Intermediate"
    my_game = Code.new( 2, beginner_chars )


my_game.generate_secret_code

puts my_game.secret_code

=begin
#
#
# def prompt(message)
#   puts "=> #{message}"
# end
#
# def create_secret_code(code, chars)
#   chars.each { |e| code << chars.shuffle.sample }
#   # could also use Rand() instead of .shuffle.sample
# end
#
# def valid_guess?(input)
#   input.length == 4 && input.all? { |e| e == "B" || e == "R" || e == "G" || e == "Y" }
# end
#
# # user_guess.length == 4 && user_guess.each { |e| e == "B" || e == "R" || e == "G" || e = "Y" }
#
# def fill_feedback(user_guess, secret_code, feedback)
#   user_guess.each_with_index do |e, i|
#     if e == secret_code[i]
#       feedback[i] = e
#     end
#   end
# end
#
# # def feedback_board(feedback)
# #   if level == beginner
# #     puts " ----- ----- ----- ----- "
# #     puts "|  #{feedback[0]}  |  #{feedback[1]}  |  #{feedback[2]}  |  #{feedback[3]}  |"
# #     puts " ----- ----- ----- ----- "
# #   elsif level == intermediate
# #     puts " ----- ----- ----- ----- ----- -----"
# #     puts "|  #{feedback[0]}  |  #{feedback[1]}  |  #{feedback[2]}  |  #{feedback[3]}  |  #{feedback[4]}  |  #{feedback[5]}  |"
# #     puts " ----- ----- ----- ----- ----- -----"
# #   else level == advanced
# #     puts " ----- ----- ----- ----- ----- ----- ----- ----- "
# #     puts "|  #{feedback[0]}  |  #{feedback[1]}  |  #{feedback[2]}  |  #{feedback[3]}  |  #{feedback[4]}  |  #{feedback[5]}  |  #{feedback[6]}  |  #{feedback[7]}  "
# #     puts " ----- ----- ----- ----- ----- ----- ----- -----"
# #   end
# # end
#
# ### game
# loop do
#
#   prompt("Welcome to MASTERMIND")
#   prompt("Would you like to (p)lay, read the (i)nstructions or (q)uit?")
#   initial_user_choice = gets.chomp.upcase
#
#   if initial_user_choice == "P"
#   elsif initial_user_choice == "I"
#     prompt("The computer has created a secret code. To win, crack the code by guessing the correct colors and positions. But don't delay! The clock is ticking. Ready?")
#   elsif initial_user_choice == "Q"
#     prompt("Goodbye!")
#     break
#   else
#     prompt("That's not a valid choice.")
#   end
#
#   loop do
#
#     # prompt("Choose a level: (b)eginner, (i)ntermediate or (a)dvanced."
#     # level_user_input = gets.chomp.upcase
#     #
#     # if level_user_input == "B"
#
#     prompt("I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.")
#
#     #make code possibilities for beginners, intermediates and advanced
#     code_possibilities = ["R", "G", "B", "Y"]
#     code_possibilities_intermediate = ["R", "G", "B", "Y", ""]
#     code_possibilities_advanced = ["R", "G", "B", "Y", "", ""]
#     secret_code = []
#
#     create_secret_code(secret_code, code_possibilities)
#
#     # prompt("LET'S GET STARTED!")
#     # puts " ----- ----- ----- ----- "
#     # puts "|     |     |     |     |"
#     # puts " ----- ----- ----- ----- "
#
#     start_time = Time.new
#
#     # set feedback for beginners, intermediates and advanced
#     feedback = ["?", "?", "?", "?"]
#     correct_colors = 0
#     correct_positions = 0
#     num_of_guesses = 0
#
#
#   #############
#     puts secret_code.join
#   #############
#
#     loop do
#
#       prompt("What's your guess?")
#       user_guess = gets.chomp.upcase.split(//)
#
#       if user_guess == ["Q"]
#         break
#       elsif user_guess == ["C"]
#         prompt("The secret code is: #{secret_code.join("")}")
#         break
#       else
#         loop do
#           if valid_guess?(user_guess)
#             break
#         #adjust length for level
#           elsif user_guess.length < 4
#             prompt("That guess is too short.")
#             prompt("What's your guess?")
#             user_guess = gets.chomp.upcase.split(//)
#           elsif user_guess.length > 4
#             prompt("That guess is too long.")
#             prompt("What's your guess?")
#             user_guess = gets.chomp.upcase.split(//)
#           end
#         end
#       end
#
#       #based on beginner, intermediate, advanced
#       fill_feedback(user_guess, secret_code, feedback)
#
#       puts feedback.join
#
#       # feedback_board(feedback)
#       # puts " ----- ----- ----- ----- "
#       # puts "|  #{feedback[0]}  |  #{feedback[1]}  |  #{feedback[2]}  |  #{feedback[3]}  |"
#       # puts " ----- ----- ----- ----- "
#
#       correct_colors = 0
#       secret_code_clone = secret_code.clone
#
#       user_guess.each do |e|
#         location = secret_code_clone.index(e)
#         if location != nil
#           secret_code_clone.delete_at(location)
#           correct_colors += 1
#         end
#       end
#
#       correct_positions = 0
#       feedback.each do |e|
#         if e != "?"
#           correct_positions += 1
#         end
#       end
#
#       num_of_guesses += 1
#       guess_syntax = "guess"
#         if num_of_guesses > 1
#           guess_syntax = "guesses"
#         end
#
#       if feedback.include?("?") == false
#         finish_time = Time.new
#         time_score = (finish_time - start_time).to_i # duration in seconds
#         seconds = (time_score % 60)
#         minutes = ((time_score / 60) % 60)
#
#         unless minutes == 1
#           minutes_syntax = "minutes"
#         else minutes_syntax = "minute"
#         end
#
#         unless seconds == 1
#           seconds_syntax = "seconds"
#         else seconds_syntax = "second"
#         end
#
#         prompt("Congratulations! You guessed the sequence #{secret_code.join} in #{num_of_guesses} #{guess_syntax} over #{minutes} #{minutes_syntax}, #{seconds} #{seconds_syntax}.")
#         break
#       end
#
#       prompt("#{user_guess.join} has #{correct_colors} of the correct elements with #{correct_positions} in the correct positions. You've taken #{num_of_guesses} #{guess_syntax}.")
#
#     end
#
#     prompt("Would you like to (p)lay again? Or (q)uit?")
#     play_again = gets.chomp.upcase
#     if play_again == "Q"
#       break
#     end
#
#   end
#
#   prompt("Goodbye!")
#   break
#
# end
=end
