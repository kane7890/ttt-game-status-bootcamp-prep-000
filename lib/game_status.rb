# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6],# left col
  [1,4,7], #center col
  [2,5,8], # right col
  [0,4,8], # TL-BR diag 
  [6,4,2], # BL-TR diag
  # ETC, an array for each win combination
]
def won?(board)
  for win_combination in WIN_COMBINATIONS do
  
      win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
 
  position_1 = board[win_index_1] # load the value of the board at win_index_1exi
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
  puts "win index combination #{win_index_1} - #{win_index_2} - #{win_index_3}"
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
   return win_combination
  else
   loopflag = false
  end
end
return false
end 
