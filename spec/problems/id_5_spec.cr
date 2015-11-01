require "../spec_helper"

describe Id5 do
  it "return smallest number that can be divided by each of the numbers from 1 to 10 without any remainder" do
    Id5.new(1, 10).calculate.should eq(2520)
  end

  it "return smallest number that can be divided by each of the numbers from 1 to 20 without any remainder" do
    Id5.new(1, 20).calculate.should eq(232792560)
  end
end
