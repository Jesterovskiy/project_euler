##
# Title: Largest palindrome product
#
class Id4
  def calculate(max_number)
    result = []

    max_number.downto(1) do |first_part|
      max_number.downto(1) do |second_part|
        @number = first_part * second_part
        break if @number.to_s == @number.to_s.reverse
      end
      result << @number
    end

    result.max
  end
end
