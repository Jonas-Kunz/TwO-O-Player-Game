# each new question must have two random numbers
# a random operation
# an answer to check

class Question
  OPERATORS = [:+, :-, :/, :*]
  attr_reader :question, :answer
  def initialize
    @num1 = ((rand(0.01...0.21).round(2) ) * 100)
    @num2 = ((rand(0.01...0.21).round(2) ) * 100)
    @operation = OPERATORS[rand(0...4)]
    @question = "What is the result of #{@num1.round(0)} #{@operation} #{@num2.round(0)}?"
    if (@operation == :/)
      @answer = @num1.send(@operation, @num2).round(1)
    else
      @answer = @num1.send(@operation, @num2).round()
    end
  end
end



