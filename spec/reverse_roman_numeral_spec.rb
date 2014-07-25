require('rspec')
require('reverse_roman_numeral')

describe('reverse_roman_numeral') do
  it("returns 4 for IV") do
    reverse_roman_numeral('IV').should(eq(4))
  end
  it("returns 9 for IX") do
    reverse_roman_numeral('IX').should(eq(9))
  end
  it("returns 40 for XL") do
    reverse_roman_numeral('XL').should(eq(40))
  end
  it("returns 90 for XC") do
    reverse_roman_numeral('XC').should(eq(90))
  end
end
