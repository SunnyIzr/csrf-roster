class StudentsController < ApplicationController
  def index
    @students = Student.all.reverse
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end
  
  private
  
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :phone, :average)
  end
  
end