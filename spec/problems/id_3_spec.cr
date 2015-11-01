require "../spec_helper"

describe Id3 do
  it "return largest prime factor of the number 13195" do
    Id3.new(13195).calculate.should eq(29)
  end

  it "return largest prime factor of the number 600851475143" do
    Id3.new(600851475143).calculate.should eq(6857)
  end
end
