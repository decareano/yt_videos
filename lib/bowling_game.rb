require  "minitest/autorun"

def score_game(rolls)
  bonus = 0
  frame_total = 0
  roll_counter = 0
  rolls.reduce(0) do |total, roll|
    total = total + roll
    roll_counter += 1

    if bonus > 0
      total = total + roll
      bonus = bonus - 1
    end

    if roll == 10 && roll_counter == 1  #strike
      bonus = 2
      frame_total = 0
      roll_counter = 0
    elsif frame_total + roll == 10     #spare
      bonus = 1
      frame_total = 0
      roll_counter = 0
    elsif roll_counter == 1
      frame_total = frame_total + roll
    else
      frame_total = 0
      roll_counter = 0
    end

    total
  end
end

class Test < MiniTest::Test

  def test_equal_to_ten
    assert_equal(10, 2 + 8)
  end

  def test_game_without_any_rolls_scores_0
    assert_equal(0, score_game([]))
  end

  def test_game_with_1_roll_with_1_pin_knocked_down
    assert_equal(1, score_game([1]))
  end

  def test_game_with_3_rolls_of_1_4_and_9
    assert_equal( 14, score_game([1,4,9]))
  end

  def test_game_with_1_strike
    assert_equal(18, score_game([10,4]))
  end

  def test_game_with_spares
    assert_equal(18, score_game([9,1,4]))
  end

  def test_game_with_6_3_7
    assert_equal(16, score_game([6,3,7]))
  end

  def test_game_with_0_6_4_2
    assert_equal(12, score_game([0,6,4,2]))
  end

  def test_game_with_0_10_4_2
    assert_equal(20, score_game([0,10,4,2]))
  end

  def test_game_with_10_10_10
    assert_equal(50, score_game([10,10,10]))
  end

  def test_game_with_1_strike_and_1_spare_by_marcelo
    assert_equal(42, score_game([10,8,2,6]))
  end

  def test_game_with_strikes_and_spares_by_marcelo
    assert_equal(56, score_game([9,1,5,2,10,3,4,5,5]))
  end

  def test_game_with_strike_on_last_frame
    assert_equal(93, score_game([3,1,5,2,2,4,4,5,5,2,6,2,8,1,5,4,2,4,10,5,4]))
  end

  def test_game_with_spare_on_last_frame
    assert_equal(85, score_game([3,1,5,2,2,4,4,5,5,2,6,2,8,1,5,4,2,4,3,7,5]))
  end
end