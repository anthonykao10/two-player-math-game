class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def get_name
    self.name
  end  
  
  def get_score
    self.score
  end

  def add_score
    self.score += 1
  end
  
  def minus_score
    if self.score - 1 >= 0
      self.score -= 1
    end
  end
end