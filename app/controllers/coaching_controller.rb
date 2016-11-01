class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @coach_answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer_enhanced(message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif message == "I am going to work right now!"
      return "Awesome!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
