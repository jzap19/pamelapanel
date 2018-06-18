class CoursesController < ApplicationController
  def index
    @courses = Course.all
end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    Course.create course_params
    redirect_to courses_path
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    course.update(course_params)
    redirect_to courses_path
  end

  def destroy
    Course.destroy(params[:id])
    redirect_to courses_path
  end

  private

  def course_params
    # will return something that looks like this:
    # {name: '...' description: '...' diameter: '...' price: '...' avaliable_until: '...'}
    params.require(:course).permit(:subject, :total_class_hours)
    end
end
