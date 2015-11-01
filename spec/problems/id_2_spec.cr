require "../spec_helper"

describe Id2 do
  it "sum of the even-valued terms, whose values do not exceed 80" do
    Id2.new(1, 2, 80).calculate.should eq(44)
  end

  it "sum of the even-valued terms, whose values do not exceed four million" do
    Id2.new(1, 2, 4_000_000).calculate.should eq(4613732)
  end
end
