class AddDefaultValues < ActiveRecord::Migration
  def change
    change_column :streaks, :longest_streak, :integer, default: 0
    change_column :streaks, :current_streak, :integer, default: 0
    change_column :streaks, :total_days, :integer, default: 0
  end
end
