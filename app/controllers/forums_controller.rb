class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.includes(:posts).find(params[:id])
  end

  def update
    post = Post.find(params[:post_id])
    post.likes.create(user: current_user)
    @forum = Forum.includes(:posts).find(params[:id])
    render :show
  end
end
