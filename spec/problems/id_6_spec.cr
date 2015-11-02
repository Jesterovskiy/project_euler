require "../spec_helper"

describe Id6 do
  it "return difference between the sum of the squares of the first ten natural numbers and the square of the sum" do
    Id6.new(1, 10).calculate.should eq(2640)
  end

  it "return difference between the sum of the squares of the first one hundred natural numbers and the square of the sum" do
    Id6.new(1, 100).calculate.should eq(25164150)
  end
end
