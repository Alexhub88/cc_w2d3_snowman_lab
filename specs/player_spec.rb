require('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new('Andris')
  end
end
