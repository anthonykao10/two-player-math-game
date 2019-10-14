class Game
  attr_accessor :p1, :p2, :current_player

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1
  end

  def start_game
    while !game_ended
      # initialize new question
      q = Question.new
      
      # prompt for response
      puts "\n#{self.current_player.name}: What does #{q.a} plus #{q.b} equal?"
      input = gets.chomp.to_i   

      # Check answer
      check_answer(input, q.answer)

      # Update current player
      update_current_player
    end
  end

  def check_answer(input, answer)
    if input != answer
      #update score
      self.current_player.minus_score
      puts "\n#{self.current_player.name}: Wrong"
    else
      puts "\n#{self.current_player.name}: Correct"
    end
    puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3\n"
  end

  def update_current_player
    if self.current_player == p1
      self.current_player = p2
    else
      self.current_player = p1
    end
  end

  def end_game
    if p1.score == 0
      puts "Player 2 wins with a score of #{p2.score}/3"
    elsif p2.score == 0
      puts "Player 1 wins with a score of #{p1.score}/3"
    end
    puts "----- GAME OVER -----"
  end

  def game_ended
    if p1.score <= 0 || p2.score <= 0
      return true
    end
    return false
  end
end
