class StudentsController < ApplicationController

  def index
    students = if params[:dickquibbles]
      Student.by_name(params[:dickquibbles])
    else
      Student.all
      
  end
  render json: students
end
  def show
    students = Student.find(params[:id])
    render json: students
  end

end
