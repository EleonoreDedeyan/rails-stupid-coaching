class CoachController < ApplicationController
  def ask
  end

  def answer
    @input = params[:query]
    @answer = coach_answer(@input)
  end

  def coach_answer(your_message)
    if /.*\?$/.match(your_message)
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return "Goodbye boy!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
