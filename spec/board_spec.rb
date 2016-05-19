require "spec_helper"

module TicTacToe

  describe Board do
  	context "#initialize" do
  	  it "has a grid key" do
  	  	expect {Board.new(grid: "grid")}.to_not raise_error
  	  end
  	end
  end

end