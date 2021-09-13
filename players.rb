class Player 
  attr_accessor :player, :lives, :question

  def initialize(player, lives, question)
    @player = player
    @lives = lives
    @question = question
  end
end