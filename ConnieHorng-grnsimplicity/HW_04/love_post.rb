require 'pry'
require 'pry-byebug'

def get_love_interest
  puts "Who do you love? \n"
  love_interest = gets.strip
  capture_love_interest_response(love_interest)
end

def capture_love_interest_response(love_interest)
<<<<<<< HEAD
  puts "Are you thinking of #{love_interest} ?"
=======
  puts "Do you think about #{love_interest} ? \n"
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
  puts "Answer 'Yes' or 'No' \n"
  user_answer = gets.strip.downcase
  get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
<<<<<<< HEAD
  case user_answer
    when user_answer = 'yes'
      puts "Then call #{love_interest}!"
    when user_answer = 'no'
      puts "Okay. Maybe call #{love_interest} later then"
    else
      puts "Please respond 'yes' or 'no'."
=======
  case user_answer #needs a to the star
    when "yes"
      puts "Then call #{love_interest} now!!!"
    when "no"
      puts "Ok. Call soon. You love #{love_interest}"
    else
      puts "That's not a valid answer \n"
      puts "Please answer 'Yes' or 'No' \n"
>>>>>>> c81e4dbff69ea6ccec2c9a0c93cea338e4f846f6
      capture_love_interest_response(love_interest)
    end
end

### This is where we call methods to run our script
get_love_interest
