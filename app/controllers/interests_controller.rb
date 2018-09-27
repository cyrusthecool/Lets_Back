class InterestsController < ApplicationController

before_action :authenticate_user, except: [:index, :show], :raise => false

  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find params[:id]
  end

  def new
    @interest = Interest.new
  end

  def edit
    @interest = Interest.find params[:id]
  end

  def update
    interest = Interest.find params[:id]
  if interest.update (interest_params)
    redirect_to interest_path
  else
    render :edit
  end
end

  def create
    interest = Interest.create(interest_params)
  if interest.save
    redirect_to interest
  else
    render :new
  end
end

  def destroy
    interest = Interest.find params[:id]
    interest.destroy
    redirect_to interest_path
  end

  private

  def interest_params
    params.require(:interest).permit(:name)
  end
end
