require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')

class HiddenWordTest < Minitest::Test

  def setup
    @hidden_word = HiddenWord.new('testing')
  end

  def test_initial_word
    assert_equal('testing', @hidden_word.name)
  end

  def test_display
    @hidden_word.guessed_letters.concat(['e','t'])
    assert_equal('te*t***', @hidden_word.display)
    p @hidden_word.display
  end

end
