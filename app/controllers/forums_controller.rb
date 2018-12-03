class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.includes(:posts).find(params[:id])
  end
end
