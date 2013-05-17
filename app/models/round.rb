class Round < ActiveRecord::Base
  attr_accessible :user_move, :session_id
  attr_accessor :result

  validates :user_move, presence: true

  before_save :set_computer_move

  def won?
    result == :won unless self.user_move.blank?
  end

  def lost?
    result == :lost unless self.user_move.blank?
  end

  def result
    case self.user_move
    when "scissors"
      case self.computer_move
      when "scissors"
        :tied
      when "paper"
        :won
      when "rock"
        :lost
      end
    when "paper"
      case self.computer_move
      when "scissors"
        :lost
      when "paper"
        :tied
      when "rock"
        :won
      end
    when "rock"
      case self.computer_move
      when "scissors"
        :won
      when "paper"
        :lost
      when "rock"
        :tied
      end
    end
  end

private

  def set_computer_move
    self.computer_move = case Random.rand(1..3)
    when 1
      'rock'
    when 2
      'paper'
    when 3
      'scissors'
    end    
  end

end
