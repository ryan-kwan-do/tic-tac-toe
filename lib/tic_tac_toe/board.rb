module TicTacToe
  class Board
  #board is initialized with the hash :grid	
  	attr_reader :grid
  	def initialize(input={})
  	  @grid = input.fetch(:grid, default_grid)	
  	end

    def get_cell(x,y)
      grid[x][y]
    end

    def game_over
      return :winner if winner?
      return :draw if draw?
      false
    end

#set cell, dependent on the square class!!!
    def set_cell(x,y, value)
      get_cell(x,y).value = value
    end

    private

  	def default_grid
  	  Array.new(3) { Array.new(3) {Square.new }}
  	end

    def draw?
      grid.flatten.map {|square| square.value}.none_empty?
    end

    def winner?
      winning_positions.each do |winning_position|
        next if winning_position_values(winning_position).all_empty?
        return true if winning_position_values(winning_position).all_same?
      end
      false
    end    

    def winning_positions
      grid + # rows
      grid.transpose + # columns
      diagonals
    end

    def diagonals
      [
        [get_cell(0,0), get_cell(1,1), get_cell(2,2)],
        [get_cell(0,2),get_cell(1,1), get_cell(2,0)]
      ]
    end

    def winning_position_values(winning_position)
      winning_position.map { |square| square.value}
    end

  end
end