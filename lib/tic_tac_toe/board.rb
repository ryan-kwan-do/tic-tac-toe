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

#set cell, dependent on the square class!!!
    def set_cell(x,y, value)
      get_cell(x,y).value = value
    end

    private

  	def default_grid
  	  Array.new(3) { Array.new(3) {Square.new }}
  	end
  end
end