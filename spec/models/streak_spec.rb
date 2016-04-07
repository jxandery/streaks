require 'rails_helper'

RSpec.describe Streak, type: :model do
  let(:streak) {Streak.create!(description: 'Exercise')}

  context '#streaks' do
    it 'has a description' do
      expect(streak.description).to eq('Exercise')
    end

    it 'has a default value for total days, longest streak and current streak of 0' do
      expect(streak.total_days).to eq(0)
      expect(streak.longest_streak).to eq(0)
      expect(streak.current_streak).to eq(0)
    end
  end
end
