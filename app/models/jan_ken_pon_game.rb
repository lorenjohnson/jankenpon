class JanKenPonGame

  def self.play(player, opponent)
    case player
    when "scissors"
      case opponent
      when "scissors"
        :tied
      when "paper"
        :won
      when "rock"
        :lost
      end
    when "paper"
      case opponent
      when "scissors"
        :lost
      when "paper"
        :tied
      when "rock"
        :won
      end
    when "rock"
      case opponent
      when "scissors"
        :won
      when "paper"
        :lost
      when "rock"
        :tied
      end
    end
  end

end