##
# Title: Smallest multiple
#
class Id5(T)
  def initialize(@first_number : T, @last_number : T)
  end

  def calculate
    @result = Int32.new(0)
    number1 = @last_number

    loop do
      (@first_number..@last_number).reverse_each do |number2|
        break if number1 % number2 != 0
        @result = number1 if number2 == @first_number
      end
      number1 += 1
      break if @result != 0
    end

    @result
  end
end
