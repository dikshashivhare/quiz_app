class Admin::SubjectsController < ApplicationController
  # before_action :authenticate_admin!
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  # GET /job_categories
  # GET /job_categories.json
  def index
    @subjects = Subject.all
  end

  # GET /job_categories/1
  # GET /job_categories/1.json
  def show
  end

  # GET /job_categories/new
  def new
    @subject = Subject.new
  end

  # GET /job_categories/1/edit
  def edit
  end

  # POST /job_categories
  # POST /job_categories.json
  def create
    @subject = Subject.new(subject_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to admin_subject_path(@subject), notice: 'subject was successfully created.' }
        format.json { render :show, status: :created, location: @subject }
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_categories/1
  # PATCH/PUT /job_categories/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to admin_subject_path(@subject), notice: 'Job category was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_categories/1
  # DELETE /job_categories/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to admin_subjects_url, notice: 'subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:name,:description)
    end
end