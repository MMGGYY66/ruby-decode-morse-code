def decode_char(char)
  morse_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_hash[char]
end

def decode_word(word)
  decoded_word = ''
  arr = word.split
  arr.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_message(string)
  new_string = ''
  string_to_array = string.split(/  /)
  string_to_array.each do |word|
    new_string += decode_word(word)
    new_string += ' '
  end
  new_string
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES 