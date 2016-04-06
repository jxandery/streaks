class SetDefaultValueForDescription < ActiveRecord::Migration
  def change
    change_column :streaks, :description, :string, null: false
  end
end
