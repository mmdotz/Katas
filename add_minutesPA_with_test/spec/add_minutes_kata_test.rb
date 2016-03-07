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
    added_time = TimeChanger.new.add_minutes(40, split_time)
    assert_equal([13, 75], added_time)
  end

  def test_convert_minutes_greater_than_60
    split_time = [13, 75]
    assert_equal([14, 15], TimeChanger.new.convert_minutes_greater_than_60(split_time))
  end

  def test_convert_split_time_to_string
    split_time = [14, 15]
    assert_equal("14 15", TimeChanger.new.convert_split_time_to_string(split_time))
  end


  def test_add_am_or_pm(split_time)
    skip
    split_time = [14, 15]
    if split_time[0] > 12
      #add pm to string
    else
      #add am
    end
  end

end
