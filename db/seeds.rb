# frozen_string_literal: true

# Seeds the effects table

# Finds or creates Test User
class SeedOneUser
  def initialize
    create_side_effect_list
    @user = create_test_user
    Entry.where(user_id: @user.id).destroy_all
    create_entries_for_user
  end

  private

  def create_side_effect_list
    SideEffect::LIST.each do |effect|
      SideEffect.create!(name: effect)
    end
  end

  # creates 30 consecutive days of user data
  def create_entries_for_user
    days_back = 30
    while days_back.positive?
      entry = Entry.create!(date_of_report: days_back.days.ago,
                            user_id: @user.id,
                            mood_attributes: { score: Faker::Number.within(range: 1..10) },
                            effectiveness_attributes: { score: Faker::Number.within(range: 1..10) })
      entry.side_effects << SideEffect.create_sample
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
end

SeedOneUser.new
