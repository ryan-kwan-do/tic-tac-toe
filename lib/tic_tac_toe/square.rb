module TicTacToe
  class Square
  	#Allows the blank tic-tac-toe square to be accessed and also changed
    attr_accessor :value
      def initialize(value = "")
     	@value = value
      end
  end
end
