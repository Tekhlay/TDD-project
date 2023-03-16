class Solver
  def factorial(number)
    return 1 if number.zero?

    number * factorial(number - 1)
  end

    def reverse(word)
        return word if word.length <= 1
        reverse(word[1..-1]) + word[0]
    end
end
