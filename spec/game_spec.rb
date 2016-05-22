require "spec_helper"

module TicTacToe

describe Game do
  
  let (:bob) {Player.new({sign: "X", name: "bob"}) }
  let (:frank) {Player.new({sign: "O", name: "frank"})}

  context "#initialize" do
  	it "randomly selects a current_player" do
  	  Array.any_instance.stub(:shuffle) { [frank, bob] }
  	  game = Game.new([bob,frank])
  	  expect(game.current_player).to eql frank
  	end

  	it "randomly selects another player" do
      Array.any_instance.stub(:shuffle) { [frank, bob] }
      game = Game.new([bob, frank])
      expect(game.other_player).to eql bob
    end  
  end

  context "#switch_players" do
  it "will set @current_player to @other_player" do
    game = Game.new([bob, frank])
    other_player = game.other_player
    game.switch_players
    expect(game.current_player).to eq other_player
  end
 
  it "will set @other_player to @current_player" do
    game = Game.new([bob, frank])
    current_player = game.current_player
    game.switch_players
    expect(game.other_player).to eq current_player
  end
end	
end
end