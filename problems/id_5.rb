##
# Title: Smallest multiple
#
class Id5
  def calculate(first_number, last_number)
    result = nil

    (first_number..last_number).each do |number|
      numbers = []
      (1..100_000_000).each do |num|
        numbers << num if num % number == 0
      end

      result = result.nil? ? numbers : result & numbers
    end

    result.min
  end
end
