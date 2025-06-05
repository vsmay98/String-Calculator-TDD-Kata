class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/

    if numbers.start_with?('//')
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2).last
    end

    numbers_array = numbers.split(delimiter).map(&:to_i)
    negatives = numbers_array.filter { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

    numbers_array.sum
  end
end
