def display_board(board)
  print " #{board[0]} " 
  print "| #{board[1]} |"
  puts " #{board[2]} "
  puts "-----------"
  print " #{board[3]} " 
  print "| #{board[4]} |"
  puts " #{board[5]} "
  puts "-----------"
  print " #{board[6]} " 
  print "| #{board[7]} |"
  puts " #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1
  
end


def move(array, index, value = "X")
  array[index] = value
end



def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end 


def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else 
    return false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
    else
      until index.between?(0, 8)
      turn(board)
    end
  end
    display_board(index)
end

