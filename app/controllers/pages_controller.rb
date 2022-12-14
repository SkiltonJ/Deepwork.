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
    @number_of_sessions = current_user.study_sessions.group_by_day_of_week(:created_at, format: "%a").count
    @week_sessions = current_user.study_sessions.group_by_week(:created_at).count.values[0] || 0
    @week_minutes = current_user.study_sessions.group_by_week(:created_at).sum(:duration).values[0] || 0
    @week_minutes_max = (@week_minutes + 20).round(-1) #this have issues when a new account is created
    @week_sessions_max = (@week_sessions + 5).round(-1)
    if current_user.study_sessions.empty?
      @last_theme = Theme.third
    else
      @last_theme = current_user.study_sessions.last.theme # this only works if a study session exists,m otherwise it breaks
    end
    # @last_theme = Theme.third
    @themes_reverse = @themes.reverse
    @vibes = ["tranquil", "nature", "calming", "deep", "intense"]
    @end_greetings = ["Amazing work!, keep the energy up!", "Solid session, one session better than before!", "Badass."]
  end

  def quickstart
  end

  def tease
  end

  def creation
    @themes = Theme.all #use this to get theme access when building theme
  end
end
