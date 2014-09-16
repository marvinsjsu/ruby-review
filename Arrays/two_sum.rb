class Array
  def two_sum
    positions = []

    (0 ... self.count).each do |index1|
      (index1 + 1 ... self.count).each do |index2|
        positions << [index1, index2] if (self[index1] + self[index2]) == 0
      end
    end

    positions
  end
end

print [-1, 0, 2, -2, 1].two_sum