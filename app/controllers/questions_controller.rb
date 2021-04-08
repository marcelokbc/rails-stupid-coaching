class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @your_message = params[:ask]
    @coach_answer = coach_answer_enhanced(@your_message)
  end

  def home

  end

  def coach_answer_enhanced(your_message)
    if @your_message == "I'm gonna work!"
      return "Ok great!"
    elsif @your_message == @your_message.upcase
      return "I can feel your motivation! "
    else
      return "I don't care, get dressed and go to work!"

    end
  end

end
