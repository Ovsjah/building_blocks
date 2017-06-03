def caesar_cipher(str, shift)
  shift = 25 if shift > 25
  n_str = ""
  str.each_char do |char|
    int = char.ord
    if (65..90) === int && 90 - int < shift
      n_char = (65 + (shift - (90 - int) - 1)).chr
      n_str << n_char
    elsif 122 - int < shift
      n_char = (97 + (shift - (122 - int) - 1)).chr
      n_str << n_char
    elsif (97..122) === int || (65..90) === int
      n_char = (int + shift).chr
      n_str << n_char
    else
      n_str << char
    end
  end
  n_str
end
  


p caesar_cipher("Fuck them all to Death!", 13)
