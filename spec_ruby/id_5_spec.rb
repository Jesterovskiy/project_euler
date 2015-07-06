RSpec.describe Id5 do
  it "return smallest number that can be divided by each of the numbers from 1 to 10 without any remainder" do
    expect(subject.calculate(1, 10)).to eq(2520)
  end

  it "return smallest number that can be divided by each of the numbers from 1 to 20 without any remainder" do
    expect(subject.calculate(1, 20)).to eq(906609)
  end
end
