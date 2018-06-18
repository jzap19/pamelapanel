class DashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    @admin = current_admin

    @cohorts = Cohort.all
    @students = Student.all
    @instructors = Instructor.all
    @courses = Course.all
  end
  private
  def admin_params
    # will return something that looks like this:
    # {name: '...', :description: '...'}
    params.require(:admin).permit(:f_name, :l_name, :email, :password)
  end
end
