
#!/usr/bin/env ruby

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





game.player1=playerx.name
game.player2=playero.name
game.play

