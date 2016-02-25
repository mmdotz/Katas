require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/add_minutes_to_time_refactor.rb'

class AddMinutesTest < Minitest::Test

  def test_time_changer_class_exists
    assert(TimeChanger)
  end

  def test_parse_time_string
    @time       = "9:34 am"
    new_time = TimeChanger.new.parse_time_string(@time)
    assert_equal("09:34", new_time)
  end

end
