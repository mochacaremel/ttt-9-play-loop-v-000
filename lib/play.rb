# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# Define your play method below

def input_to_index(input)
  input.to_i - 1
end 

#if index is valid...
def valid_move?(number_entered, board)
  number_entered.between?(0, 8) && !(position_taken?(board, number_entered))
end
#if index is valid...make the move for index
def move(array, index, name = "X")
  array[index] = name
end
#if index is valid...show the board
def position_taken?(board, answer)
  board[answer] != " " 
end

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
    puts "Please enter 1-9:"
    answer = STDIN.gets.chomp
    answer = input_to_index(answer)
    if valid_move?(answer, board)
      move(board, answer)
      display_board(board)
      #turn(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end 
end

def play(board)
  turns = 3
  counter = 0
  loop do
    counter = counter + 1
    turn(board)
    if counter >= turns
      puts "You only get #{turns} turns baby!"
    end
  end
end

#else ask for input again until you get valid input
#_________________________________________________

board = ["X"," "," "," "," "," "," "," "," "]
puts "Welcome to Tic Tac Toe!"
puts display_board(board)
#turn(board)
play(board)

   # check_game_over?
    def check_game_over
        # check for victory
        # check for draw
        check_victory || check_draw
    end

    # check_victory?
    def check_victory
        # IF Board says current player's piece has
        # a winning_combination?
        if @board.winning_combination?(@current_player.piece)
            # then output a victory message
            puts "Congratulations #{@current_player.name}, you win!"
            true
        else
            false
        end
    end

    # check_draw?
    def check_draw
        # If Board says we've filled up 
        if @board.full?
            # display draw message
            puts "Bummer, you've drawn..."
            true
        else
            false
        end
    end
