class Admin::TopicQuizzesController < ApplicationController
  before_action :set_topic_quiz, only: [:show, :edit, :update, :destroy]

  # GET /topic_quizzes
  # GET /topic_quizzes.json
  def index
    @topic_quizzes = TopicQuiz.all
  end

  # GET /topic_quizzes/1
  # GET /topic_quizzes/1.json
  def show
  end

  # GET /topic_quizzes/new
  def new
    @topic_quiz = TopicQuiz.new
  end

  # GET /topic_quizzes/1/edit
  def edit
  end

  # POST /topic_quizzes
  # POST /topic_quizzes.json
  def create
    @topic_quiz = TopicQuiz.new(topic_quiz_params)


    respond_to do |format|
      if @topic_quiz.save
        format.html { redirect_to admin_topic_quizzes_url, notice: 'topic_quiz was successfully created.' }
        format.json { render :show, status: :created, location: @topic_quiz }
      else
        format.html { render :new }
        format.json { render json: @topic_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic_quizzes/1
  # PATCH/PUT /topic_quizzes/1.json
  def update
    respond_to do |format|
      if @topic_quiz.update(topic_quiz_params)
        format.html { redirect_to admin_topic_quizzes_url, notice: 'topic_quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic_quiz }
      else
        format.html { render :edit }
        format.json { render json: @topic_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_quizzes/1
  # DELETE /topic_quizzes/1.json
  def destroy
    @topic_quiz.destroy
    respond_to do |format|
      format.html { redirect_to admin_topic_quizzes_url, notice: 'topic_quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_quiz
      @topic_quiz = TopicQuiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_quiz_params
      params.require(:topic_quiz).permit(:name, :description, :rules, multiple_choices_attributes: [:id, :question, :_destroy, mcq_options_attributes:
             [:id, :option,:is_correct ,:_destroy]])
    end
end
