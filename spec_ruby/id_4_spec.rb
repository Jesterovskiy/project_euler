RSpec.describe Id4 do
  it "return largest palindrome made from the product of two 2-digit numbers" do
    expect(subject.calculate(99)).to eq(9009)
  end

  it "return largest palindrome made from the product of two 3-digit numbers" do
    expect(subject.calculate(999)).to eq(906609)
  end
end
