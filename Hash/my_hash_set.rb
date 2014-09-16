class MyHashSet
  def initialize
    @store = {}
  end

  def insert(el)
    @store[el] = true
  end

  def include?(el)
    @store.has_key?(el)
  end

  def delete(el)
    if self.include?(el)
      @store.delete(el)
      return true
    end

    false
  end

  def to_a
    @store.keys
  end

  def union(set2)
    result_set = self.class.new

    set2.to_a.each do |el|
      result_set.insert(el)
    end

    self.to_a.each do |el|
      result_set.insert(el)
    end

    result_set
  end

  def intersect(set2)
    result_set = self.class.new

    self.to_a.each do |el|
      if set2.to_a.include?(el)
        result_set.insert(el)
      end
    end

    result_set
  end

  def minus(set2)
    result_set = self.class.new

    self.to_a.each do |el|
      result_set.insert(el) unless set2.include?(el)
    end

    result_set
  end
end

set1 = MyHashSet.new
set1.insert(:a)
set1.insert(:b)
set1.insert(:c)
puts "set1 = #{set1.to_a}"

set2 = MyHashSet.new
set2.insert(:c)
set2.insert(:d)
set2.insert(:e)
puts "set2 = #{set2.to_a}"

set3 = set1.union(set2)
puts "set3 = #{set3.to_a}"

set4 = set1.intersect(set2)
puts "set4 = #{set4.to_a}"

puts "set1 = #{set1.to_a}"
puts "set2 = #{set2.to_a}"
set5 = set1.minus(set2)
puts "set5 = #{set5.to_a}"


