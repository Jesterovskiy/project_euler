require "../spec_helper"

describe Id7 do
  it "return 6th prime number" do
    Id7.new(6).calculate.should eq(13)
  end

  it "return 10001st prime number" do
    Id7.new(10001).calculate.should eq(104743)
  end
end
