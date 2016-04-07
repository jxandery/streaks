class StreaksController < ApplicationController

  def new
  end

  def index
    @streak = Streak.new
    @streaks = Streak.all
  end

  def create
    Streak.create!(description: params[:streak][:description])
    redirect_to streaks_path
  end

end
