class EnrollmentsController < ApplicationController

before_action :authenticate_user, except: [:index, :show], :raise => false

  def index
    @enrollments = Enrollment.all
  end

  def show
    @enrollment = Enrollment.find params[:id]
  end

  def new
    @enrollment =  Enrollment.new
  end

  def edit
    @enrollment = Enrollment.find params[:id]
  end

  def create
    enrollment = Enrollment.new(enrollment_params)
    if enrollment.save
      redirect_to enrollments_path
    else
      render :new
    end
  end

  def update
    enrollment = Enrollment.find params[:id]
    if enrollment.update(enrollment_params)
      redirect_to enrollments_path
    else
      render :edit
    end
  end

  def destroy
    enrollment = Enrollment.find params[:id]
    enrollment.destroy
    redirect_to enrollments_path
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:status, :waitinglist,:user_id,:event_id,:admin,:moderator)

  end
end
