require('minitest/autorun')
require('minitest/rg')
require_relative('game')
require_relative('player')
require_relative('hiddenword')

puts "Welcome to the Game! To start press enter:"
gets.chomp

puts "Please enter your name: "
player_name = gets.chomp

player = Player.new(player_name)
system('clear')

puts "Cool! Now enter a word. It can only contain letters."

chosen_word = gets.chomp
word = HiddenWord.new(chosen_word)

game = Game.new(player, word)
system('clear')

while true
  if game.is_game_lost?
    puts "Game over!"
    puts "Press enter to continue."
    gets.chomp
    break
  elsif  game.is_game_won?
    puts "Congratulations! You won!"
    puts "Press enter to continue."
    gets.chomp
    break
  end

  game.hidden_word.display
  puts ''
  puts "Please pick a letter"
  letter = gets.chomp

  result = game.hidden_word.check_letter(letter)
  game.player.subtract_life(result)
end
