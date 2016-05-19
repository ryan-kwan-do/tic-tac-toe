module TicTacToe
  class Board
  #board is initialized with the hash :grid	
  	attr_reader :grid
  	def initialize(input)
  	  @grid = input.fetch(:grid)	
  	end

  	def default_grid
  	  Array.new(3) { Array.new(3) {Cell.new }}
  	end
  end
end