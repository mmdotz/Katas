require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/add_minutes_to_time_refactor.rb'

class AddMinutesTest < Minitest::Test

  def test_time_changer_class_exists
    assert(TimeChanger)
  end

end
