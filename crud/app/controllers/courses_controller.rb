class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    redirect_to courses_path
  end

  def show; end

  def edit; end

  def update
    @course.update course_params
    redirect_to course_path
  end

  def destroy
    @course.destroy
    redirect_to courses_path, status: :see_other
  end

  private

  def course_params
    params.required(:course).permit(:title, :description, :visible, :published)
  end

  def set_course
    @course = Course.find params[:id]
  end
end
