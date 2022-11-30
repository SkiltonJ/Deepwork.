class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @study_sessions = StudySession.all
  end

  def profile
  # Build to be able to access all user data
    @study_sessions = current_user.study_sessions
    @topics = current_user.topics
    @topic = Topic.new
    @themes = Theme.all # is this accessing the theme templates of the sessions?
    @last_theme = StudySession.last.theme
    @number_of_sessions = current_user.study_sessions.group_by_day_of_week(:created_at, format: "%a").count
  end

  def quickstart
  end

  def tease
  end

  def creation
    @themes = Theme.all #use this to get theme access when building theme
  end
end
