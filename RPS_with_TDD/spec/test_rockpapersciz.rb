
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/rockpapersciz.rb'


class TestGame < Minitest::Unit::TestCase

  def setup
    @game = Game.new
  end

  def test_class_Game_exists
    assert(Game)
  end

  def test_question_appears
    assert_output (/like/) {@game.start_game}
  end

end
