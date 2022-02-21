require_relative 'tic_tac_toe'

class TicTacToeNode

  attr_accessor :next_mover_mark, :prev_move_pos, :board

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    if board.over?
      if board.winner == :o
        true
      else
        false
      end
    else
      if evaluator == :x &&

      elsif evaluator == :o && 

      end
    end
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    arr = []
    board_dup = @board.dup
    newNode = TicTacToeNode.new(board_dup, next_mover_mark)
    (0...newNode.board.length).each do |i|
      (0...newNode.board[0].length).each do |j|
        if board.empty?([i, j])
          board[i][j] = newNode.next_mover_mark 
          arr.push([i, j])
          prev_move_pos = [i, j]
        end
      end
    end
    arr
  end
end
