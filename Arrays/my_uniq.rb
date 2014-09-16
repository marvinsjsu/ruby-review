class Array
  def my_uniq
    uniq_array = []

    self.each do |element|
      uniq_array << element unless uniq_array.include?(element)
    end

    uniq_array
  end
end

puts [1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5].my_uniq