class AnswersController < ApplicationController
  def show
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
  end

  def edit
  end

  def answer_params
    params.require(:question).permit(:title, :body, :tags, :question_id)
  end
end
