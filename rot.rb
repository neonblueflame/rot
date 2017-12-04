class ROT
  attr_accessor :places
  
  def decrypt(message)
    decrypted_msg = Array.new
    letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    if places.zero? or message == "\n"
      return ""
    end
    
    msg_array = message.strip.downcase.split(//)
    letters_size = letters.size
    
    for letter in msg_array
      if letters.include?(letter)
        new_index = letters.index(letter) + places
        
        if new_index >= letters_size
          new_index = new_index - letters_size
        end
        
        decrypted_msg.push(letters[new_index])
      elsif
        decrypted_msg.push(letter)
      end
    end
    
    return decrypted_msg.join
  end
end

cipher = ROT.new

puts "Enter ROT places: "
cipher.places = gets.to_i

puts "Enter message: "
message = gets

puts ""
printf "ROT places: %d", cipher.places
puts ""
printf "Encrypted message: %s", message
puts ""
printf "Decrypted message: %s", cipher.decrypt(message)