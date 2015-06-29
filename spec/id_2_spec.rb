RSpec.describe Id2 do
  it "sum of the even-valued terms, whose values do not exceed 80" do
    expect(subject.calculate(1, 2, 80)).to eq(44)
  end

  it "sum of the even-valued terms, whose values do not exceed four million" do
    expect(subject.calculate(1, 2, 4_000_000)).to eq(4613732)
  end
end
