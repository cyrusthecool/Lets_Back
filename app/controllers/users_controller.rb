class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def update
    user = User.find params[:id]

    respond_to do |format|
    if user.update(user_params)
      format.html { redirect_to user, notice: 'User was successfully updated'}
      format.json { render :show, status: :ok, location: user }
    else
      format.html { render :edit }
      format.json { render json: user.errors, status: :unprocessable_entity }
    end
  end
end



  def create
    user = User.create (user_params)
      respond_to do |format|
      if user.save

        format.html { redirect_to user, notice: "User was successfully created."}
        format.json { render :show, status: :created, location: user }
      else

        format.html { render :new }
        format.json { render json: user.errors, status: :unprocessable_entity }
      end
    end
end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :image, :location, :email, :admin, :bio, :password, :password_confirmation)
  end
end
