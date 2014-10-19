require "minitest/autorun"

def convert(integer)
  numerals = {10 => "x",
              5 => "v",
              4 => "iv",
              1 => "i"}
  total = ""
  numerals.each {|number, letter|
    while integer >= number
      total += letter
      integer = integer - number
    end
  }
  total
end





class NumToRomanConversionTest < Minitest::Test

  def test_one_to_i
    assert_equal "i", convert(1)
  end

  def test_four_to_iv
    assert_equal "iv", convert(4)
  end

  def test_five_to_v
    assert_equal "v", convert(5)
  end

  def test_ten_to_x
    assert_equal "x", convert(10)
  end

  def test_fifteen_to_xv
    assert_equal "xv", convert(15)
  end

  def test_two_to_ii
    assert_equal "ii", convert(2)
  end

  def test_twenty_to_xx
    assert_equal "xx", convert(20)
  end

  def  test_twentyfive_to_xxv
    assert_equal  "xxv", convert(25)
  end

end