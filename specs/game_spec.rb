require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../player')
require_relative('../hiddenword')

class GameTest < Minitest::Test

  def setup
    @game = Game.new(Player.new('test'), HiddenWord.new('testing'))
  end

  def test_check_letter
    assert_equal(true, @game.hidden_word.check_letter('t'))
    assert_equal(true, @game.hidden_word.check_letter('x'))
  end

  def test_is_game_lost?
    @game.player.lives = 0
    assert_equal(true, @game.is_game_lost?)
  end

  def test_is_game_is_won?
    @game.hidden_word.guessed_letters = ['t','e','s','i','n','g']
    assert_equal(true, @game.is_game_won?)
  end

end
