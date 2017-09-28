class AnswersController < ApplicationController
  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers

    respond_to do |format|
      format.html
      format.xml { render xml: @answers }
    end
  end

  def show
    @question = Question.find(params[:question_id])
    @answers = @question.answers.find(params[:id])
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user = current_user

    respond_to do |format|
      if @answer.save
        format.html { redirect_to([@question, @answer], :notice => 'Answer was successfully posted.') }
        format.json { render :show, status: :created, location: @question.answer }
      else
        format.html { redirect_to question_path(@question) }
        format.json { render json: @question.answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to([@answer.question, @answer], :notice => 'Answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to(question_answers_path) }
      format.xml { head :ok }
    end
  end


  def answer_params
    params.require(:answer).permit(:body)
  end
end
