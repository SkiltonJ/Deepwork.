class StudySessionsController < ApplicationController
  def index

  end

  def show
    @study_session = StudySession.find(params[:id])
    @topics = current_user.topics
  end

  def create
    # @user = current_user
    @theme = Theme.find(params[:theme_id])
    @session = StudySession.new
    @session.theme = @theme
    if @session.save
      redirect_to study_session_path(@session, modal_param: true)
    else
      render :back, status: :unprocessable_entity
    end
  end

  def update
    # @user = current_user
    # @topic = Topic.find(params[:topic_id])
    # @theme = Theme.find(params[:theme_id])
    @session = StudySession.find(params[:id])
    # @session.topic_id = @topic
    # @session.user = current_user
    @session.update(session_params)
    if @session.save
      redirect_to study_session_path(@session)
    else
      render :back, status: :unprocessable_entity
    end
  end

  private

  def session_params
    params.require(:study_session).permit(:intention, :theme_id, :topic_id) #tried theme_id in params - no good
  end
end

# @session = StudySession.new(params[:theme_id])
# results in...
# When assigning attributes, you must pass a hash as an argument, String passed.
# {"theme_id"=>"7"}


# @session.update_attribute(:theme_id)
# results in...
# When assigning attributes, you must pass a hash as an argument, Symbol passed.



# Parameters: {"theme_id"=>"7"}
# if this is a hash then


    # @theme = Theme.find(params[:id])
    # @session = StudySession.new
    # @session.them_id = @theme
    # the above still results in ActiveRecord::RecordNotFound (Couldn't find Theme without an ID):
