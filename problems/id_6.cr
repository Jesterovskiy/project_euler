##
# Title: Sum square difference
#
class Id6(T)
  def initialize(@first_number : T, @last_number : T)
  end

  def calculate
    array1 = Array(Int32).new
    array2  = Array(Int32).new

    (@first_number..@last_number).each do |number|
      array1 << number * number
      array2 << number
    end

    sum_squares = array1.inject { |sum, x| sum + x }
    sum = array2.inject { |sum, x| sum + x }
    square_sum  = sum * sum

    square_sum - sum_squares
  end
end
