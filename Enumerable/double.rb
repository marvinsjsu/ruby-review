def double(arr)
  arr.map {|val| val * 2}
end

arr = (1..10).to_a
puts "Arr after doubling= #{double(arr)}"