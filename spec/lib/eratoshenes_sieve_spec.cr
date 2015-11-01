require "../spec_helper"

describe EratosthenesSieve do
  it "get nth element from cached primes" do
    EratosthenesSieve.new.get_nth_prime(5).should eq(13)
  end

  it "get nth element from not cached primes" do
    EratosthenesSieve.new.get_nth_prime(100).should eq(547)
  end
end
