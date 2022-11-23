class StudySessionsController < ApplicationController

  def show
    @study_session = StudySession.new
  end

end
