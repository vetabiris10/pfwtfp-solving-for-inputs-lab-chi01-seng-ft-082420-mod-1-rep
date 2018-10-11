def fourth_method(input)
  array = [1, 2, 3, 4, 5]
  array.select { |element| element % input == 0 }
end

# expect(method(first_input)).to equal([2,4])
def first_input
  2
end

# expect(method(second_input)).to equal([1,2,3,4,5])
def second_input
  1
end

# expect(method(third_input)).to equal(196)
def third_input; end

# expect(method(third_input)).to equal(196)
def third_input; end
