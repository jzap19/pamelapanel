class InstructorsCohortsController < ApplicationController
  def index
    @instructorscohorts = InstructorsCohort.all
end

  def show
    @instructorcohort = InstructorsCohort.find(params[:id])
  end

  def new
    @instructorcohort = InstructorsCohort.new
  end

  def create
    InstructorsCohort.create instructors_cohort_params
    redirect_to instructors_cohorts_path
  end

  def edit
    @instructorcohort = InstructorsCohort.find(params[:id])
  end

  def update
    instructorcohort = InstructorsCohort.find(params[:id])
    instructorcohort.update(instructors_cohort_params)
    redirect_to instructors_cohorts_path
  end
  
  def destroy
    InstructorsCohort.destroy(params[:id])
    redirect_to instructors_cohorts_path
  end

  private

  def instructors_cohort_params
    # will return something that looks like this:
    # {name: '...' description: '...' diameter: '...' price: '...' avaliable_until: '...'}
    params.require(:instructors_cohort).permit(:instructor_id, :cohort_id)
    end
end
