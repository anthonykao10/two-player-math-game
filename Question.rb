class Question
  attr_accessor :a, :b, :answer
  def initialize
    @a = rand(1..20)
    @b = rand(1..20)
    @answer = @a + @b
  end
end