require "spec_helper"

module TicTacToe

  describe Player do 
    context "#initialize" do
      it "raises an exception when initialized with {}" do
      	expect {Player.new({})}.to raise_error
      end

      it "does not raise exception when initialized with valid hash" do
      	input = {name: "Bob", sign: "X"}
      	expect {Player.new(input)}.to_not raise_error
      end
    end
#checking that player attributes are accessible
    context "#sign" do
      it "is returns the sign" do
      	input = {name: "Bob", sign: "X"}
      	player = Player.new(input)
      	expect(player.sign).to eql("X")
      end
    end

    context "#name" do
      it "returns the name" do
      	input = {name: "Tony", sign: "O"}
      	player = Player.new(input)
      	expect(player.name).to eql("Tony")
      end
    end

  end
end
