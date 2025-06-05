# String Calculator TDD Kata
Incubyte TDD Assessment, built in Ruby with RSpec. 

# Features
- Returns 0 for empty strings.
- Handles single numbers (e.g., "1" → 1).
- Sums comma-separated numbers (e.g., "1,2,3,4" → 10).
- Supports newlines as delimiters (e.g., "1\n2,3" → 6).
- Allows custom delimiters (e.g., "//;\n1;2" → 3).
- Throws an exception for negative numbers, listing all negatives (e.g., "1,-2,3,-4" → "negative numbers not allowed -2,-4").

# Setup
- Ruby (3.0 or later) is installed.
- Clone the repo
- Install RSpec: `bundle install`

# Running Tests
Run the tests with: `rspec spec/string_calculator_spec.rb`

