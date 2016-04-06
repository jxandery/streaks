class WelcomeController < ApplicationController
  def index
    @streaks = Streak.all
  end
end
