class StudentsController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:destroy]
  def index
    @students = Student.all
end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    Student.create student_params
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to students_path
  end

  def destroy
    Student.destroy(params[:id])


    redirect_to students_path
    # render json: {status: 'boom success', message: 'todo was successfully deleted'}
  end

  private

  def student_params
    # will return something that looks like this:
    # {name: '...' description: '...' diameter: '...' price: '...' avaliable_until: '...'}
    params.require(:student).permit(:first_name, :last_name, :date_of_birth, :highest_ed)
    end
end
