require 'rails_helper'

feature 'visitor can see their exercise streaks' do
  describe '20 minutes daily' do

    scenario 'user can see their streaks' do
      visit root_path
      expect(page).to have_content('Streaks Tracker')
    end

    scenario 'user can add a streak' do
      visit root_path
      fill_in 'Description', with: 'Running'
      click_link_or_button 'Create Streak'

      expect(page).to have_content('Running Streak')
      expect(page).to have_content('Current Running Streak is 0')
      expect(page).to have_content('Longest Running Streak is 0')
      expect(page).to have_content('Total Days Running is 0')
    end

  end
end
