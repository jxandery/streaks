class CreateStreaks < ActiveRecord::Migration
  def change
    create_table :streaks do |t|
      t.string :description
      t.integer :longest_streak
      t.integer :current_streak
      t.integer :total_days

      t.timestamps null: false
    end
  end
end
