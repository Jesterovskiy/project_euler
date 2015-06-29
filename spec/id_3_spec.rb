RSpec.describe Id3 do
  it "return largest prime factor of the number 13195" do
    expect(subject.calculate(13195)).to eq(29)
  end

  it "return largest prime factor of the number 600851475143" do
    expect(subject.calculate(600851475143)).to eq(6857)
  end
end
