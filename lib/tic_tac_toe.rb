class TicTacToe
  
  WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
  ]
  
  def initialize
    @board = Array.new(9, " ") 
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(string)
    @choose = string.to_i-1
  end
  
  def move(input_to_index, player)
    @board [input_to_index] = player
  end

  def position_taken?(input_to_index)
    if @board[input_to_index] == "X" || @board[input_to_index] == "O"
      true
    else
      false
    end
  end

  def valid_move?(input_to_index)
    !position_taken?(input_to_index) && @board[input_to_index]
  end 
  
  def turn_count
    count = 0
    @board.each do |i|
      count +=1 if i == "X" || i == "O"
  end 
    count
end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end 
  
  def turn
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      move(index, player_token)
      display_board
    else
      turn
    end
  end
  
  def won? 
  end 
  
  def full?
  end 
  
  def draw?
  end 
  
  def over?
  end 
  
  def winner
  end 
  
  def play
  end
  
  
end


