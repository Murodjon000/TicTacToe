class TicTacToe
    attr_accessor :player1,:player2
        def initialize
            @board=Array.new(9," ")
            @player1="X"
            @player2="O"
        end
    
        WIN_COMBINATIONS=[
            [0,1,2], 
            [3,4,5],
            [6,7,8],
            [0,4,8],
            [2,4,6],
            [0,3,6],
            [1,4,7],
            [2,5,8]
        ]
    
        def display_board
            puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
            puts "-----------"
            puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
            puts "-----------"
            puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
        end
    
        def input_to_index(string)
            @choose=string.to_i-1
        end
    
        def move(input_to_index,player)
            @board[input_to_index]=player
        end
    
        def position_taken?(input_to_index)
            if @board[input_to_index] == "X" || @board[input_to_index]=="O"
                true
            else
                false
            end
        end
    
        def valid_move?(input_to_index)
            !position_taken?(input_to_index) && @board[input_to_index]
        end
    
        def turn_count
            count=0
            @board.each do |elm|
                count+=1 if elm=="X" || elm=="O"
            end
            count
        end
    
        def current_player
            turn_count % 2 == 0 ? "X" : "O"
        end
        def turn
            if turn_count % 2==0
                puts "#{player1} Please enter 1-9"
            else
                puts "#{player2} Please enter 1-9"
            end
            choice=gets.strip
            position=input_to_index(choice)
            if position_taken?(position)
                puts "Invalid number, please select another number"
            else
                if valid_move?(position)
                    move(position,current_player)
                    display_board
                else
                    turn
                end
            end
           
          end
        def won?
            WIN_COMBINATIONS.detect do |combo|
                @board[combo[0]] == @board[combo[1]] && 
                @board[combo[1]] == @board[combo[2]] &&
                position_taken?(combo[0])
            end
        end
    
        def full?
            @board.all? {|token| token=="X" || token=="O"}
        end
    
        def draw?
            !won? && full?
        end
    
        def over?
            won? || draw?
        end
    
        def winner
            if winning_combo=won?
                @board[winning_combo.first]
            end
        end
    
        def play
            while !over?
                turn
            end
            if won?
              if winner=="X"
                puts "Congratulations #{player1} 😍🎉‍"
              elsif winner=="O"
                puts "Congratulations #{player2} 😍🎉‍"
              end 
            elsif draw?
                puts "Cat`s Game"
            end
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
    
    end
    
    