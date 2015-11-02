##
# Title: Largest product in a series
#
class Id8
  def initialize(@str : String, @digits_number : Int32)
  end

  def calculate
    result = Int32.new(0)

    while @str.size > @digits_number
      digits = @str.strip[0,@digits_number]
      number = digits.split("").inject(1_i64) {|mul, x| mul * x.to_i64 }
      result = number if number > result
      @str = @str[1..-1]
    end

    result
  end
end
