def my_transpose(matrix)
  transposed = Array.new(matrix.count) {[]}

  (0 ... matrix.count).each do |idx1|
    (0 ... matrix.count).each do |idx2|
      transposed[idx2][idx1] = matrix[idx1][idx2]
    end
  end

  transposed
end

print my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])
