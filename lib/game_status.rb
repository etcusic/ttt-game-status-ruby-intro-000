# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  winner = []

  WIN_COMBINATIONS.each do |combo|
    value_1 = board[combo[0]]
    value_2 = board[combo[1]]
    value_3 = board[combo[2]]

    if value_1 == 'X' && value_2 == 'X' && value_3 == 'X'
      winner.push(combo[0], combo[1], combo[2])
    end
  end

  if winner.length == 3
    return winner
  else
    return false
  end
end

# def won?(board)
#   player_1 = [] # will accept each index number of board that == 'X'
#   winning_combo = [] # will be pushed if winning combination of indeces is found in player_1
#
# #this method finds each 'X' in board array and pushes the index number to player_1
#   counter = 0
#   while counter < board.length
#     if board[counter] == 'X'
#       player_1.push(counter)
#     end
#   end
#
#   return player_1
# #this method goes through each WIN_COMBINATIONS array to see if all 3 match numbers in player_1. If yes => winning_combo.push
#   # index = 0
#   # while index < WIN_COMBINATIONS.length
#   #   if player_1.include?(WIN_COMBINATIONS[index][0]) && player_1.include?(WIN_COMBINATIONS[index][1]) && player_1.include?(WIN_COMBINATIONS[index][2])
#   #     winning_combo = WIN_COMBINATIONS[index]
#   #     index += 1
#   #   else
#   #     index += 1
#   #   end
#   # end
#   #
#   # if winning_combo.length == 3
#   #   return winning_combo
#   # else
#   #   return false
#   # end
# end
