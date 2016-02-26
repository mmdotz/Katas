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
    new_time = "09:34"
    split_time = TimeChanger.new.split_time_string(new_time)
    assert_equal([9, 34], split_time)
  end



end
