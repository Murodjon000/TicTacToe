# rubocop:disable all
#!/usr/bin/env ruby
<<<<<<< HEAD
puts 'Hello world!'
=======
class Player
  attr_accessor :name,:sign
 end



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

  def reference_board
    <<-BOARD
    1 | 2 | 3
  ------------
    4 | 5 | 6
  ------------
    7 | 8 | 9
    BOARD
  end




  puts 'To see the game rules press any button!'
  gets.chomp
  puts "Each player shall select the number from table below! (only numbers from 1 to 9!)\n"
  puts reference_board

  puts "#{playerx.name} is your turn select number 1-9"
  num=gets.chomp
  puts "#{playerx.name} selected #{num}"
  puts reference_board
  puts "#{playero.name} is your turn select number 1-9"
  num=gets.chomp
  puts "#{playero.name} selected #{num}"
  puts reference_board
   puts "#{playerx.name} is your turn select number 1-9"
  num=gets.chomp
  puts "#{playerx.name} selected #{num}"
  puts reference_board
  puts "#{playero.name} is your turn select number 1-9"
  num=gets.chomp
  puts "#{playero.name} selected #{num}"
  puts reference_board

  puts "Congratulations #{playerx.name} Won"
  
 


>>>>>>> user_interface
# rubocop:enable all