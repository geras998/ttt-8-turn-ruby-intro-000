def display_board(board)
  9.times do |i|
    print " #{board[i]} "
    if (i+1) % 3 == 0 and i < 8 then
      puts ""
      puts "-" * 11
    end
    print "|" if (i+1) % 3 != 0
  end
  puts ""
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  false if board[index] == " " or board[index].to_s.empty?
  true if board[index].eql?("X") or board[index].eql?("O")
end