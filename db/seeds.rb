# frozen_string_literal: true

# Seeds the effects table

# Finds or creates Test User
class SeedOneUser
  def initialize
    user = create_test_user
    Entry.where(user_id: user.id).destroy_all
    create_entries_for_user(user, generated_side_effects)
  end

  private

  # creates 30 consecutive days of user data
  def create_entries_for_user(user, generated_side_effects)
    days_back = 30
    while days_back.positive?
      entry = Entry.create!(date_of_report: days_back.days.ago, user_id: user.id)
      SideEffect.create!(list: generated_side_effects, entry_id: entry.id)
      Mood.create!(score: Faker::Number.within(range: 1..10), entry_id: entry.id)
      Effectiveness.create!(score: Faker::Number.within(range: 1..10), entry_id: entry.id)

      days_back -= 1
    end
  end

  # generates a test user
  def create_test_user
    if User.where(user_name: 'test_user').exists?
      User.find_by(user_name: 'test_user')
    else
      User.create!(user_name: 'test_user',
                   email: 'test_user@example.com',
                   password: 'password')
    end
  end

  # generates a randomized list of up to five side effects
  def generated_side_effects
    generated_side_effects = []
    rand(5).times do
      generated_side_effects << SideEffect::LIST.sample
    end
    generated_side_effects
  end
end

SeedOneUser.new
