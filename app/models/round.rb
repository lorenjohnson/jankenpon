class Round < ActiveRecord::Base
  attr_accessible :user_move, :session_id, :computer_move, :result
  validates :user_move, presence: true
  before_save :set_result

  def won?
    result == "won"
  end

  def lost?
    result == "lost"
  end

protected
  
  def set_result
    game = JanKenPonGame.new(self.user_move, Round.where(session_id: self.session_id))
    game.play
    self.assign_attributes(
      result: game.result,
      computer_move: game.computer_move
    )
  end

end
