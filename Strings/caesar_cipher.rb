def caesar_cipher(str, shift_val)
 char_array = ('a'..'z').to_a
 new_str = ""

 str.split("").each do |char|

   unless char == " "
     index = char_array.index(char)

     new_index = (index + shift_val) % 26
     new_str += char_array[new_index]
     # puts "char = #{char}"
     # puts "new_str = #{new_str}"
   end
 end

 new_str
end

def caesar_cipher_b(str, shift_val)
  new_str = ""

  str.split("").each do |char|

    unless char == " "
      a_index = 'a'.ord
      index = char.ord
      new_index = (index + shift_val) < (a_index + 25) ? (index + shift_val) : (index + shift_val - 26)
      new_str += (new_index).chr
      # puts "char = #{char}"
      # puts "new_str = #{new_str}"
    end
  end

  new_str
end

puts caesar_cipher("hello my name is marvin ", 3) # => "khoor"
puts caesar_cipher_b("hello my name is marvin", 3) # => "khoor"