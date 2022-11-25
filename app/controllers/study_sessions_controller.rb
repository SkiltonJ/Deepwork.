class StudySessionsController < ApplicationController
  def index

  end

  def show
    @study_session = StudySession.new
    @topics = current_user.topics
  end

  def create
    @user = current_user
    @theme = Theme.find(params[:theme_id])
    @session = StudySession.new
    @session.theme = @theme
    if @session.save
      redirect_to study_session_path(@session)
    else
      render :back, status: :unprocessable_entity
    end
  end

  private

  # def session_params
  #   params.require(:study_session).permit(:intention, :theme_id)
  # end
end
