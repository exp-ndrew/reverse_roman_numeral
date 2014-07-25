def reverse_roman_numeral numeral

  if (/^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/).match(numeral) == nil
    final_number = "That was not valid."

  else

    numeral = numeral.split('')
    final_number = 0


    numeral.each_with_index do |letter, i|
      if numeral[i] == "C"
        if numeral[i+1] == "M"
          final_number -= 100
        elsif numeral[i+1] == "D"
          final_number -= 100
        else
          final_number += 100
        end

      elsif numeral[i] == "X"
        if numeral[i+1] == "C"
          final_number -= 10
        elsif numeral[i+1] == "L"
          final_number -= 10
        else
          final_number += 10
        end

      elsif numeral[i] == "I"
        if numeral[i+1] == "X"
          final_number -= 1
        elsif numeral[i+1] == "V"
          final_number -= 1
        else
          final_number += 1
        end

      elsif numeral[i] == "M"
        final_number += 1000

      elsif numeral[i] == "D"
        final_number += 500

      elsif numeral[i] == "L"
        final_number += 50

      elsif numeral[i] == "V"
        final_number += 5
      end

    end

      final_number
  end

end
