# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: On^2
# Space complexity: O1
def matrix_check_sum(matrix)
  i = 0

  matrix.length.times do
    sum = 0

    matrix.each do |array|
      sum += array[i]
    end

    if sum != matrix[i].reduce(:+)
      return false
    end

    i += 1
  end

  return true
end
