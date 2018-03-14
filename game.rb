class Game
  attr_accessor :player, :hidden_word

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
  end


  def is_game_lost?
    return @player.lives == 0 ? true : false
  end

  def is_game_won?
    if (@hidden_word.word.split('') - @hidden_word.guessed_letters).empty?
      return true
    else
      return false
    end
  end
end
