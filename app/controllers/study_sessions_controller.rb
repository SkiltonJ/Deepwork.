class StudySessionsController < ApplicationController
  def index

  end

  def show
    @study_session = StudySession.new
  end
end
