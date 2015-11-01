##
# Title: Largest prime factor
#
class Id3(T)
  def initialize(@number : T)
  end

  def calculate
    result = 0

    EratosthenesSieve.new.get_primes(1_000_000).each do |prime|
      result = prime if @number % prime == 0
      break if @number / prime == 1
    end

    result
  end
end
