require "../spec_helper"

describe Id1 do
  it "sum of all the multiples of 3 or 5 below 10" do
    Id1.new(10).calculate.should eq(23)
  end

  it "sum of all the multiples of 3 or 5 below 1000" do
    Id1.new(1000).calculate.should eq(233168)
  end
end
