# romanize: Takes a number as input and translate it to roman numbers.
#
# romkeys  - An hash that have numbers pointing to roman numbers.
# input  - The input of the user.
# output - The string that will be returned.
#
# Examples
#
#   romanize(5)
#   # => 'V'
#
# Returns the translated number.

#This funktion will take a number as input and transform it to roman numerals one example of this: If the input was 400 this will result as 'CD'.
def romanize(input)

  raise ArgumentError, 'can not encode negative number' if input < 0
  raise ArgumentError, 'can not encode zero' if input == 0

  #Creating a Hash that pointing different numbers to different characters.
  romkeys = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV' ,1 => 'I'}

  #Creating a variable that have the format string, for storing the different characters.
  output = ' '

  #Looping until the input is zero.
  until input == 0

    #Looping thro the different keys and values of the hash.
    romkeys.each do |key, value|
      if input >= key

        #If the input was 5 this will result as 'V' after that the output will save the V and loop thro until it's nothing left.
        output += value

        #This subtract the key value to make the loop end.
        input -= key

        #This just ending the loop.
        break
      end
    end
  end

  #Returning the output string.
  return output
end