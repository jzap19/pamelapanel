class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
    @courses = Course.all
  end

  def create
    Cohort.create cohort_params
    redirect_to cohorts_path
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)
    redirect_to cohorts_path
  end

  def destroy
    Cohort.destroy(params[:id])
    redirect_to cohorts_path
  end

  private

  def cohort_params
    # will return something that looks like this:
    # {name: '...' description: '...' diameter: '...' price: '...' avaliable_until: '...'}
    params.require(:cohort).permit(:cohort_name, :start_date, :end_date, :instructor_teaching, :students_in_cohort, :course_id)
    end
end
