require "spec_helper"
 
describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be true
    end
 
    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be false
    end
 
    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end

  context "#all_same?" do
    it "returns true if all the elements are the same" do
      expect([1,1,1,1].all_same?).to be true
    end

    it "returns false if not all of the elements are the same" do
      expect([1,2,1,1].all_same?).to be false
    end

    it "returns true given an empty array" do
      expect([].all_same?).to be true
    end
  end

  context "#any_empty?" do
    it "returns true if at least one element of an array is empty" do
      expect([nil,1].any_empty?).to be true
    end

    it "returns false if all elements are not empty" do
      expect([1,2,3,"bat"].any_empty?).to be false
    end

    it "returns true if an array is empty" do
      expect([].any_empty?).to be true
    end
  end

  context "#none_empty" do
    it "returns true if no elements are nil" do
      expect([1,1,2].none_empty?).to be true
    end

    it "returns false if some elements are nil" do
      expect([1,nil,2].none_empty?).to be false
    end

    it "returns false given an empty array" do
      expect([].none_empty?).to be false
    end
  end

end