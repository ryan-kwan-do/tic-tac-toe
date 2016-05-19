require "spec_helper"

module TicTacToe
  describe Square do 

  	context "square is initialized with no values" do
  	  it "is initialized with a value of '' by default" do
  	  	square_x = Square.new
  	  	expect(square_x.value).to eql('')
  	  end

  	  it "can be initialized with an 'X'" do
  	  	square_x = Square.new("X")
  	  	expect(square_x.value).to eql('X')
  	  end
  	  
  	end

  end	
end