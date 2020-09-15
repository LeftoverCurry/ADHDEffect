module SeedsAssistant
  # generates a test user
  def create_confirmable_user
    User.find_or_create_by(user_name: 'test_user') do |user|
      user.email = 'test_user@example.com'
      user.password = 'password'
      create_entries_for_user(user)
    end
  end

  def create_side_effect_list
    SideEffect::LIST.each do |effect|
      SideEffect.create!(name: effect)
    end
    @side_effect_list = SideEffect.all
  end

  # creates 30 consecutive days of user data
  def create_entries_for_user(_user)
    entries = []
    (0..30).each do |_number|
      entries << EntryBuilder.new(number).entry
    end
  end

  class EntryBuilder
    def initialize(number)
      @number = number
      @entry = Entry.new(date_of_report: DateTime.now - number.days, user_id: user.id)
      build_score(:mood)
      build_score(:effectiveness)
      @entry.effectiveness.build(score: random_score)
      generated_random_ids.each do |id|
        @entry.side_effects << @side_effect_list.select { |effect| effect.id == id }
      end
    end

    private

    def build_score(name)
      @entry.send(name).build(score: Faker::Number.within(range: 1..10))
    end

    def generated_random_ids
      all_possible = SideEffect.pluck(:id)
      generated_ids = [all_possible.shift]
      rand(5).times do
        generated_ids << all_possible.delete(all_possible.sample)
      end
      generated_ids
    end
  end
end
