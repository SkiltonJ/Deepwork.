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
    @themes = current_user.themes
  end

  def quickstart
  end

  def tease
  end
end





# a counter that will add up the total xp from a session
# Start with a fixed 20xp per session
#  - Session length for the 20xp will have to be defined so if a longer session then
      # they will get more xp
# Will this be tied to the timer ending?
# maybe just start with linking it to a button click to see if you can make the
  # bar increase still
# Start with doing it all in Javascript then i can add ruby to connect it to the
  # backend to store in DB
