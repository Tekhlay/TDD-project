class Solver
  def factorial(number)
    raise ArgumentError, 'Number must be a non-negative integer' if number < 0

    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(word)
    return word if word.length <= 1

    reverse(word[1..]) + word[0]
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
