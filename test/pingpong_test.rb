require "minitest/autorun"
require_relative "../pingpong"

class PingpongTest < Minitest::Test
  def test_get_winner_returns_p1
    ruleset = {
      sets: 3,
      points_per_set: 11,
      win_with_points: 2
    }

    result = Pingpong.get_winner(ruleset, 11, 0, 1, 1)
    assert_equal "p1", result
  end

  def test_get_winner_returns_p2
    ruleset = {
      sets: 3,
      points_per_set: 11,
      win_with_points: 2
    }

    result = Pingpong.get_winner(ruleset, 5, 11, 1, 1)
    assert_equal "p2", result
  end

  def test_get_winner_returns_p1
    ruleset = {
      sets: 5,
      points_per_set: 21,
      win_with_points: 2
    }

    result = Pingpong.get_winner(ruleset, 21, 0, 2, 1)
    assert_equal "p1", result
  end
end
