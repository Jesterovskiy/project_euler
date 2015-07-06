require 'prime'
##
# Title: Largest prime factor
#
class Id3
  def calculate(number)
    result = 0

    Prime.each(1_000_000) do |prime|
      result = prime if number % prime == 0
      break if number / prime == 1
    end

    result
  end
end
