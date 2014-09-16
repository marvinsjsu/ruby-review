def num_to_s(num, base)
  num_hash = {
    1 => "1",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    0 => "0",
    10 => "A",
    11 => "B",
    12 => "C",
    13 => "D",
    14 => "E",
    15 => "F"
  }

  number_in_string = ""
  divisor = 1

  while (num / divisor) > 0
    remainder = (num / divisor) % base
    number_in_string = num_hash[remainder] + number_in_string
    divisor = divisor * base
  end

  number_in_string
end

puts num_to_s(5, 10) #=> "5"
puts num_to_s(5, 2)  #=> "101"
puts num_to_s(5, 16) #=> "5"

puts num_to_s(234, 10) #=> "234"
puts num_to_s(234, 2)  #=> "11101010"
puts num_to_s(234, 16) #=> "EA"
