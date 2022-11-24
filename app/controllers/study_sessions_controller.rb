class StudySessionsController < ApplicationController
  def index

  end

  def show
    @study_session = StudySession.new
    @topics = current_user.topics
  end

  def create
    
  end
end
