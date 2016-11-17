class CoursesController < ApplicationController

  #======================================================
  # Load Informations
  #======================================================
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  

  #======================================================
  # Dependences to access This page
  #======================================================
  before_action :check_current_user
  before_action :check_admin, only: [:new, :edit, :update, :destroy]


  #======================================================
  # Actions
  #======================================================
  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :photo)
    end

    def check_admin
      if current_user
        if !current_user.admin
          redirect_to courses_path
        end
      end
    end
end
