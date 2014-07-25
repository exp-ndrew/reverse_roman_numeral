def reverse_roman_numeral (numeral)
  characters = numeral.to_s.split('')
  final_number = 0

  numerals = {
    "M"   => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }


  characters.each_with_index do |character, index|
    numerals.each do |letter, number|
      if letter == character + character[index +1]
        final_number += numerals[number]
        characters.delete(character + character[index +1])
        end
      end
    end

  puts final_number

  # print input_array
  # characters.each_with_index do |character, index|
  #   numerals.each do |letter, number|
  #     if characters[index + 1] != nil && letter == (character + characters[index + 1])
  #       final_number += number
  #     elsif letter == i
  #       final_number += number
  #     end
  #   end
  # end

  # characters.each_with_index do |character, index|
  #   numerals.each do |letter, number|
  #     if number <= number[characters[index + 1]]
  #       final_number -= number
  #     elsif letter == character
  #       if number != nil
  #         final_number += number
  #       end
  #     end
  #   end
  # end
end

reverse_roman_numeral("XLV")
