class JanKenPonGame
  attr_accessor :user_move, :computer_move, :result

  def initialize(user_move, past_rounds)
    @user_move = user_move
    @past_rounds = past_rounds
    set_computer_move
  end

  def play
    self.result = case self.user_move
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

protected

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
