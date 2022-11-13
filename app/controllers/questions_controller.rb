class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer != ""
      @coach_answer = answer_checker(@answer)
    else
      @coach_answer = "I can't hear you!"
    end
  end

  def answer_checker(answer)
    if answer == "I am going to work"
      return "Great!"
    elsif answer.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
