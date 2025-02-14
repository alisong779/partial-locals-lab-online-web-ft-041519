class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def index
    if params[:student]
      @students = Student.search(params[:student][:name])
    else
      @students = Student.all
    end
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end
end
