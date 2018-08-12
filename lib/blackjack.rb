def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  grab = get_user_input
  #grab
 until grab == 'h' || grab == 's'
   invalid_command
   #prompt_user
   #grab
 end
   #grab
 if grab == 's'
    card_total
 elsif grab == 'h'
     card_total += deal_card 
 end
  card_total 
end

def invalid_command
  # code invalid_command here
  #puts "No such command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   welcome
#   initial_round
#   prompt_user
#   grab = get_user_input
#   until grab == 'h'
#   prompt_user 
#   grab 
# end
# end

#   def runner
#     welcome
#     initial_round
#   until hit?(initial_round) > 21
#     end_game
#   end
# end  

def runner
    welcome
    card_total = initial_round
  until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
  end
  end_game(card_total)
end