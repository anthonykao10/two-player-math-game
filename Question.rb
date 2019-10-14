class Question
  attr_accessor :a, :b, :answer
  def initialize
    @a = rand(1..20)
    @b = rand(1..20)
    @answer = @a + @b
  end

  def get_val1
    self.a
  end

  def get_val2
    self.b
  end

  def get_answer
    self.answer
  end

  def ask_question
    puts "ask question..."
  end
end