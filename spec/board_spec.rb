require "spec_helper"

module TicTacToe

  describe Board do
  	context "#initialize" do
  	  it "has a grid key" do
  	  	expect {Board.new(grid: "grid")}.to_not raise_error
  	  end

  	  it "sets the grid with three rows by default" do
  	  	board = Board.new
  	  	expect(board.grid.size).to eql(3)
  	  end

  	  it "creates three things in each row by default" do
  	  	board = Board.new
  	  	board.grid.each do |row|
  	  	  expect(row.size).to eql(3)
  	    end
  	  end
  	end  
  	
  	context "#grid" do
  	  it "returns the grid" do
  	    board = Board.new(grid: "Blah")
  	    expect(board.grid).to eql "Blah"
  	  end
  	end

  	context "get square" do
  	  it "returns the right square based on the entered x,y coordinate" do
  	  	grid = [["", "", ""], ["", "", "return_me"], ["", "", ""]]
  	  	board = Board.new(grid: grid)
  	  	expect(board.get_cell(1,2)).to eql("return_me")
  	  end
  	end

  	context	"#set_cell" do
  	  it "updates the value of the cell at the x,y coordinate" do
  	  	Bob = Struct.new(:value)
  	  	grid = [[Bob.new("pickle"), "", ""], ["", "", ""], ["", "", ""]]
  	  	board = Board.new(grid: grid)
  	  	board.set_cell(0,0,"burger")
  	  	expect(board.get_cell(0,0).value).to eql("burger")
  	  end
  	end

  end

end