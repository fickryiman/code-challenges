# In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, 
# Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. 
# It is a type of substitution cipher in which each letter in the plaintext is replaced 
# by a letter some fixed number of positions down the alphabet. 
# For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 
# The method is named after Julius Caesar, who used it in his private correspondence.

# https://www.theodinproject.com/lessons/ruby-caesar-cipher

def caesar_cipher(string, number)
  result = ''

  string.each_byte do |byte|
    plus_the_byte = byte + number

    if (byte > 64 and byte < 91) and plus_the_byte > 90
      result += (plus_the_byte - 26).chr
    elsif byte < 64
      result += byte.chr
    else
      result += (plus_the_byte).chr
    end
  end

  result
end

puts caesar_cipher("What a string!", 5)

