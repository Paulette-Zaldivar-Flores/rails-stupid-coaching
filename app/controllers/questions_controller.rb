class QuestionsController < ActionController::Base
  def ask
  end

  def answer
    @question = params[:input]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
