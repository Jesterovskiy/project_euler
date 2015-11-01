##
# Title: Smallest multiple
#
class Id5(T)
  def initialize(@first_number : T, @last_number : T)
  end

  def calculate
    @result = Int32.new(0)

    (@last_number..Int64::MAX).each do |number1|
      (@first_number..@last_number).reverse_each do |number2|
        break unless number1 % number2 == 0
        @result = number1 if number2 == @first_number
      end
      break unless @result == 0
    end

    @result
  end
end
