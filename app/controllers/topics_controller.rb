class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def create
    @user = current_user
    @topic = Topic.new(topic_params)
    @topic.user = @user
    if @topic.save
      redirect_to profile_path
    else
      render "pages/profile", status: :unprocessable_entity
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end
