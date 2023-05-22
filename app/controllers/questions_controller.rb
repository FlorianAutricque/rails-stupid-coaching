class QuestionsController < ApplicationController
  def ask; end

  def answer
    @questions = params[:questions]
    if @questions == 'I am going to work'
      @respond = 'Great!'
    elsif @questions.end_with?('?')
      @respond = 'Silly question, get dressed and go to work!'
    else
      @respond = "I dont't care, get dressed and go to work!"
    end
  end
end
