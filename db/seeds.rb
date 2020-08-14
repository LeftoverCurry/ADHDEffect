# frozen_string_literal: true

# Seeds the effects table

def create_test_user
  user =
    if User.where(user_name: 'test_user').exists?
      User.find_by(user_name: 'test_user')
    else
      User.create!(user_name: 'test_user',
                   email: 'test_user@example.com',
                   password: 'password')
    end

  Effect.where(user_id: user.id).destroy_all

  days_back = 30
  while days_back.positive?
    Effect.create!(
      datetime: days_back.days.ago,
      mood: Faker::Number.within(range: 1..10),
      side_effects: generated_side_effects,
      user_id: user.id,
      effectiveness: Faker::Number.within(range: 1..10)
    )
    days_back -= 1
  end
end

def generated_side_effects
  generated_side_effects = []
  rand(5).times do
    generated_side_effects << Effect::SIDE_EFFECTS.sample
  end
  generated_side_effects
end

create_test_user
