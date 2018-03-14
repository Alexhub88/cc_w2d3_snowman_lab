class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def subtract_life(guess_result)
    if !guess_result
      @lives -=1
    end
  end





end
