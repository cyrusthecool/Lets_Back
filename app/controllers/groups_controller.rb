class GroupsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show], :raise => false

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find params[:id]

  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find params[:id]

  end

  def update
  @group = Group.find params[:id]
  # @group.interest_ids << params[:interest_ids]
  if @group.update(group_params)
    @group.interest_ids = []
    params[:interest_ids].each do |id|
      interest = Interest.find id
      @group.interests << interest
      p "adding interest: #{ id } #{ interest.name }"
      p "~" * 40
    end
    #redirect_to group_path(@group)
    render :json => @group
  else
    render 'edit'
  end
end

def create
  @group = Group.create (group_params)

    if @group.save
      redirect_to group_path(@group)
    else
      render 'new'
    end
end

def destroy
  @group = Group.find params[:id]
  @group.destroy
  redirect_to groups_path
end






  private
  def group_params
    params.require(:group).permit(:id, :name, :description, :location,  :image, :nickname, :interest_ids => [] )
  end

end
