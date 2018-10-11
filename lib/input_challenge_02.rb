def second_method(input)
  array = [1, 2, 3, 4, 5, 6]
  array.select { |element| element % input == 0 }
end

# expect(second_method(first_input)).to equal([2,4])
def first_input
  2
end

# expect(second_method(second_input)).to equal([3,6])
def second_input
  3
end

# expect(second_method(third_input)).to equal([4])
def third_input
  4
end

# expect(second_method(third_input)).to equal([])
def third_input
  7 # or any larger number
end
