# frozen_string_literal: true

# rock paper scissors

# user makes a choice- present options
# save user input to variable
# computer then makes a choice
# save computer choice to variable
# write code to determine winner
# the winner is displayed
# loop the enire game until one player achieves 5 points.

VALID_CHOICES = %w[rock paper scissors].freeze
computers_victories = 0
users_victories = 0
def count_wins
  # some code
end

def prompt(message)
  puts("=> #{message}")
end
choice = nil
computer_choice = nil

loop do
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp

      break if VALID_CHOICES.include?(choice)

      prompt("That's not a valid choice.")
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose #{choice} and I chose #{computer_choice}"

    break if computer_choice != choice

    prompt("It's a tie, go again!")
  end

  computer_wins = 'Sorry, I win, better luck next time!'
  user_wins = 'Darn it, you win!'

  case [computer_choice, choice]
  when %w[rock scissors]
    prompt computer_wins
    computers_victories += 1
  when %w[paper rock]
    prompt computer_wins
    computers_victories += 1
  when %w[scissors paper]
    prompt computer_wins
    computers_victories += 1
  when %w[scissors rock]
    prompt user_wins
    users_victories += 1
  when %w[rock paper]
    prompt user_wins
    users_victories += 1
  when %w[paper scissors]
    prompt user_wins
    users_victories += 1
  end

  prompt "computer: #{computers_victories} wins"
  prompt "User: #{users_victories} wins"

  break if computers_victories == 5 || users_victories == 5
end
if computers_victories > users_victories
  prompt 'Computer takes this round'
else
  prompt 'User takes this round'
end
prompt 'Thanks, lets play again sometime!'
