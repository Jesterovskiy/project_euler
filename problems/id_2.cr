##
# Title: Even Fibonacci numbers
#
class Id2(T)
  def initialize(@first_term : T, @second_term : T, @max_term : T)
  end

  def calculate
    term   = 0
    result = 0
    result += @first_term if @first_term % 2 == 0
    result += @second_term if @second_term % 2 == 0

    while term <= @max_term.to_i
      term = @first_term.to_i + @second_term.to_i
      result += term if term % 2 == 0
      @first_term = @second_term
      @second_term = term
    end

    result
  end
end
