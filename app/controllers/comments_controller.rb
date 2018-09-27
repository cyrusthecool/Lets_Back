class CommentsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show], :raise => false

  def new
      @comment =  Comment.new
  end

  def show

    @comment = Comment.find params[:id]
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def create
    @comment = Comment.create (comment_params)

      if @comment.save
        redirect_to comment_path(@comment)
      else
        render 'new'
      end
  end


  def index
      @comments = Comment.all

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  def store
       @comment = Comment.new(comment_params)
       @comment.save
       redirect_to '/'
  end

  def update
  @comment = Comment.find params[:id]
  @comment.update comment_params
  if @comment.update(comment_params)
    redirect_to comment_path(@comment)
  else
    render 'edit'
  end
end



  private
  def comment_params
  params.require(:comment).permit(:user_id,:event_id,:content)
end

  def set_comment
     @comment = Comment.find(params[:id])
  end
  def form
  end

end
