require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/add_minutes_to_time_refactor.rb'

class AddMinutesTest < Minitest::Test

  def test_time_changer_class_exists
    assert(TimeChanger)
  end

  def test_parse_time_string
    time    = "1:34 pm"
    new_time = TimeChanger.new.parse_time_string(time)
    assert_equal("13:34", new_time)
  end

  def test_split_time_string
    new_time = "01:35"
    split_time = TimeChanger.new.split_time_string(new_time)
    assert_equal([1, 35], split_time)
  end

  def test_add_minutes
    split_time = [13, 35]
    added_time = TimeChanger.new.add_minutes(split_time, 40)
    assert_equal([13, 75], added_time)
  end

  def test_convert_minutes_greater_than_60
    # skip #add_minutes is failing so
    assert_equal([14, 15], TimeChanger.new.convert_minutes_greater_than_60)
  end

end
