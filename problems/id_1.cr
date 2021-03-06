##
# Title: Multiples of 3 and 5
#
class Id1(T)
  def initialize(@number : T)
  end

  def calculate
    result = 0

    (0...@number).each do |num|
      result += num if num % 3 == 0 || num % 5 == 0
    end

    result
  end
end
