##
# Title: 10001st prime
#
class Id7(T)
  def initialize(@number : T)
  end

  def calculate
    EratosthenesSieve.new.get_nth_prime(@number-1)
  end
end
