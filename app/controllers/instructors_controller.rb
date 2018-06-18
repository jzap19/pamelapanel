class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    Instructor.create instructor_params
    redirect_to instructors_path
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    instructor = Instructor.find(params[:id])
    instructor.update(instructor_params)
    redirect_to instructors_path
  end

  def destroy
    Instructor.destroy(params[:id])
    redirect_to instructors_path
  end

  private

  def instructor_params
    # will return something that looks like this:
    # {name: '...' description: '...' diameter: '...' price: '...' avaliable_until: '...'}
    params.require(:instructor).permit(:first_name, :last_name, :date_of_birth, :salary, :highest_edu)
    end
end
