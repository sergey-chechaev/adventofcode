def solution(captcha)
  arr = captcha.split("")
  arr = arr + [arr.first]
  accum = []
  arr.each_with_index do |d, i|
    if arr[i+1] == d
      accum << d.to_i
    end
  end

  accum.inject(0, :+)
end

require 'minitest/autorun'

class Tests < Minitest::Test
  def test_input_1
    captcha = "1122"

    assert_equal 3, solution(captcha)
  end

  def test_input_2
    captcha = "1111"

    assert_equal 4, solution(captcha)
  end

  def test_input_3
   captcha = "1234"

    assert_equal 0, solution(captcha)
  end

  def test_input_4
   captcha = "91212129"

    assert_equal 9, solution(captcha)
  end
end
