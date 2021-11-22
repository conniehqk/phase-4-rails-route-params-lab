class StudentsController < ApplicationController

  def index
    if params.include?(:name)
      students = Student.where("first_name = ? OR last_name = ?", params[:name].capitalize, params[:name].capitalize)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
