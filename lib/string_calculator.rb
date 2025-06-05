class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = parse_delimiter(numbers)
    numbers_array = split_numbers(numbers, delimiter)
    validate_negatives(numbers_array)

    numbers_array.sum
  end

  private

  def parse_delimiter(numbers)
    delimiter = /,|\n/

    if numbers.start_with?('//')
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2).last
    end
    [delimiter, numbers]
  end

  def split_numbers(numbers, delimiter)
    numbers.split(delimiter).map(&:to_i)
  end

  def validate_negatives(numbers)
    negatives = numbers.filter { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?
  end
end
