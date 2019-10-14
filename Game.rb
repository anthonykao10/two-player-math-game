class Game
  attr_accessor :p1, :p2, :current_player

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = p1
  end

  def start_game
    while !self.game_ended
      # initialize new question
      q = Question.new
      
      # prompt for response
      puts "\n#{self.current_player.get_name}: What does #{q.get_val1} plus #{q.get_val2} equal?"
      input = gets.chomp.to_i   

      # Check answer
      self.check_answer(input, q.get_answer)

      # Update current player
      self.update_current_player
    end

  end

  def check_answer(input, answer)
    if input != answer
      #update score
      self.current_player.minus_score
      puts "\n#{self.current_player.get_name}: Wrong"
    else
      puts "\n#{self.current_player.get_name}: Correct"
    end
    puts "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3\n"
  end

  def update_current_player
    if self.current_player == p1
      self.current_player = p2
    else
      self.current_player = p1
    end
  end

  def end_game
    if @p1.score == 0
      puts "Player 2 wins with a score of #{@p2.score}/3"
    elsif @p2.score == 0
      puts "Player 1 wins with a score of #{@p1.score}/3"
    end
    puts "----- GAME OVER -----"
  end

  def game_ended
    if @p1.score <= 0 || @p2.score <= 0
      return true
    end
    return false
  end
end
