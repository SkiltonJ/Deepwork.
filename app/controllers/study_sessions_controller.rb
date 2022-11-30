class StudySessionsController < ApplicationController
  def index

  end

  def show
    @study_session = StudySession.find(params[:id])
    @topics = current_user.topics
    @theme = @study_session.theme
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
      render head: :ok
    else
      render :back, status: :unprocessable_entity
    end
  end

  def update_duration
    @session = StudySession.find(params[:study_session_id])
    @end_time = Time.now
    @start_time = @session.updated_at.to_time
    @end_time = DateTime.now.new_offset(0).to_time
    @duration = @end_time - @start_time
    @session.duration = @duration / 60
    puts "update session"
    if @session.save
      redirect_to profile_path(modal_param: true)
      puts "In the save"
    else
      render :back, status: :unprocessable_entity
      puts "rendering back"
    end
  end

  private

  def session_params
    params.require(:study_session).permit(:intention, :theme_id, :topic_id)
  end
end
