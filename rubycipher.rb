def is_lower?(c)
  c != c.upcase
end

def is_upper?(c)
  c != c.downcase
end

def caesar_cipher(string, number)
  alphabet = [["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],
  ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]]
  
  cryptic_string =[]
  string.each_char {|char|
    if is_lower?(char)
      lower_index = alphabet[0].index("#{char.to_s}") + number
      if lower_index > 25
        lower_index = lower_index - 26
      end
      cryptic_string.push(alphabet[0][lower_index]) 
    elsif is_upper?(char)
      upper_index = alphabet[1].index("#{char.to_s}") + number
      if upper_index > 25
        upper_index = upper_index - 26
      end
      cryptic_string.push(alphabet[1][upper_index])
    else
      cryptic_string.push(char) 
    end  
      }
  return cryptic_string.join
end

puts caesar_cipher("What a string!", 5)

