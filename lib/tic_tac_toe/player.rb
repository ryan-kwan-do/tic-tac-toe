module TicTacToe
  class Player

#names and sign ("X" or "O") can only be read
  	attr_reader :name, :sign

  	def initialize(input)
  	  @name = input.fetch(:name)
  	  @sign = input.fetch(:sign)
  	end

  end
end