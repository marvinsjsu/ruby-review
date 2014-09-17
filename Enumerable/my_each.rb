class Array
  def my_each(&blk)
    (0...self.count).each do |val|
      blk.call(self[val])
    end

    self
  end
end

return_value = [1, 2, 3].my_each do |num|
  puts num
end.my_each do |num|
  puts num
end

