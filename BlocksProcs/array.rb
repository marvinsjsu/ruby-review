class Array
  def my_each(&blk)
    0.upto(self.count - 1) do |idx|
      blk.call(self[idx])
    end
  end

  def my_map(&blk)
    result = []

    self.my_each do |val|
      result << blk.call(val)
    end

    result
  end

  def my_select(&blk)
    result = []

    self.my_each do |val|
      result << val if blk.call(val) == true
    end

    result
  end
end

arr = (1..20).to_a

arr.my_each do |val|
  puts val
end

arr2 = arr.my_map do |val|
   val * 2
end

arr3 = arr.my_select {|x| x % 2 == 0}

puts "arr2 = #{arr2}"
puts "arr3 = #{arr3}"