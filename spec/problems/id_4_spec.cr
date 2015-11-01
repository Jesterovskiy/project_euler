require "../spec_helper"

describe Id4 do
  it "return largest palindrome made from the product of two 2-digit numbers" do
    Id4.new(99).calculate.should eq(9009)
  end

  it "return largest palindrome made from the product of two 3-digit numbers" do
    Id4.new(999).calculate.should eq(906609)
  end
end
