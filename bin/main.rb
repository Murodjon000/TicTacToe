# rubocop:disable all
#!/usr/bin/env ruby
require_relative "../lib/board.rb"
require_relative "../lib/player.rb"

puts 'Hello 🙌 Welocme Tic Tac Toe game  please  press any button!'
gets.chomp

playerx = Player.new
playerx.sign = 'X'
puts "Enter user 'X' name."
playerx.name = gets.chomp
while playerx.name =~ /[^a-zA-Z]/ || playerx.name == ''
  puts 'Invalid name, enter another name'
  playerx.name = gets.chomp
end

playero = Player.new
  playero.sign = 'O'
  puts "Enter user 'O' name."
  playero.name = gets.chomp
  while playero.name =~ /[^a-zA-Z]/ || playero.name == '' || playero.name == playerx.name
    puts 'Invalid name, enter another name'
    playero.name = gets.chomp
  end


game=TicTacToe.new


  puts 'To see the game rules press any button!'
  gets.chomp
  puts "Each player shall select the number from table below! (only numbers from 1 to 9!)\n"
  puts game.reference_board

game.player1=playerx.name
game.player2=playero.name
game.play

# rubocop:enable all