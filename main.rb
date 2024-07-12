# ANSI escape codes for colors
COLOR_RESET = "\e[0m"
COLOR_RED = "\e[31m"
COLOR_GREEN = "\e[32m"
COLOR_YELLOW = "\e[33m"

def calculate_result(user_choice, pc_choice)
  result = (user_choice - pc_choice) % 3

  case result
  when 1
    "#{COLOR_GREEN}You Win!#{COLOR_RESET}"
  when 2
    "#{COLOR_RED}You lose!#{COLOR_RESET}"
  else
    "#{COLOR_YELLOW}It's a draw#{COLOR_RESET}"
  end
end

choices = {
  1 => 'Stone',
  2 => 'Paper',
  3 => 'Scissors'
}

new_game = 'y'

while new_game.downcase == 'y'
  choices.each do |k, v|
    puts "#{k} - #{v}"
  end

  puts "#{COLOR_GREEN}+_+_+_+_+_+ JokenPo +_+_+_+_+_+#{COLOR_RESET}"
  print "Let's Play! Choose an option: "
  user_choice = gets.chomp.to_i

  until choices.key?(user_choice)
    print "Invalid option. Choose again: "
    user_choice = gets.chomp.to_i
  end

  pc_choice = rand(3) + 1

  puts "\nYou chose #{COLOR_YELLOW}#{choices[user_choice]}#{COLOR_RESET}"
  puts "Computer chose #{COLOR_YELLOW}#{choices[pc_choice]}#{COLOR_RESET}\n\n"

  puts calculate_result(user_choice, pc_choice)

  print "\nDo you want to play again? (Y/N): "
  new_game = gets.chomp.downcase
end
