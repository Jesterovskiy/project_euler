RSpec.describe Id1 do
  it "sum of all the multiples of 3 or 5 below 10" do
    expect(subject.calculate(10)).to eq(23)
  end

  it "sum of all the multiples of 3 or 5 below 1000" do
    expect(subject.calculate(1000)).to eq(233168)
  end
end
