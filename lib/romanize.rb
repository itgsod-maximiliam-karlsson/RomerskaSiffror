def romanize(input)
  raise ArgumentError, 'can not encode negative number' if input < 0
  raise ArgumentError, 'can not encode zero' if input == 0
  romkeys = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV' ,1 => 'I'}
  output = ' '
  until input == 0
    romkeys.each do |key, value|
    end
  end
  return output
end