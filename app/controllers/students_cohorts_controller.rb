class StudentsCohortsController < ApplicationController
  def index
    @studentscohorts = StudentsCohort.all
end

  def show
    @studentcohort = StudentsCohort.find(params[:id])
  end

  def new
    @studentcohort = StudentsCohort.new
  end

  def create
    StudentsCohort.create students_cohort_params
    redirect_to students_cohorts_path
  end

  def edit
    @studentcohort = StudentsCohort.find(params[:id])
  end

  def update
    studentcohort = StudentsCohort.find(params[:id])
    studentcohort.update(students_cohort_params)
    redirect_to students_cohorts_path
  end

  def destroy
    StudentsCohort.destroy(params[:id])
    redirect_to students_cohorts_path
  end

  private

  def students_cohort_params
    # will return something that looks like this:
    # {name: '...' description: '...' diameter: '...' price: '...' avaliable_until: '...'}
    params.require(:students_cohort).permit(:student_id, :cohort_id)
    end
  end
