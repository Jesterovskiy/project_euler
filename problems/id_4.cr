##
# Title: Largest palindrome product
#
class Id4(T)
  def initialize(@max_number : T)
  end

  def calculate
    result = Array(Int32).new
    number = Int32.new(0)

    (1..@max_number).reverse_each do |first_part|
      (1..@max_number).reverse_each do |second_part|
        number = first_part * second_part
        break if number.to_s == number.to_s.reverse
      end
      result << number
    end

    result.max
  end
end
