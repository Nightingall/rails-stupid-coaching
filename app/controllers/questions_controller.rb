class QuestionsController < ApplicationController
  def ask
    @questions = params[:question]
  end

  def answer
    @questions = params[:questions]
    @answers = if @questions == 'I am going to work'
      'Great'
    elsif @questions.include?('?')
      'Silly question, get dressed and go to work!.'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end


