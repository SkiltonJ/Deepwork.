class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @study_sessions = StudySession.all
  end

  def profile
  # Build to be able to access all user data
    @study_sessions = StudySession.all
    @topics = Topic.all
    @topic = Topic.new
    @themes = Theme.all # is this accessing the theme templates of the sessions?
  end

  def quickstart
  end

  def tease
  end
end
