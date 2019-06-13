class CommentsController < ApplicationController

  def new
    @happy = Happy.find(params[:product_id])
    @comment = Comment.new
  end

  def create
    Comment.create(create_params)
    redirect_to controller: :products, action: :index
  end

  private
  def create_params
    params.require(:comment).permit(:content).merge(happy_id: params[:happy_id], user_id: current_user.id)
  end
end
