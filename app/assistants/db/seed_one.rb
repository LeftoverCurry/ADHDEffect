require_relative 'seeds_assistant.rb'
# Seeds one confirmable user with name 'test_user' and 30 days of entries.
class SeedOneUser
  include SeedsAssistant
  def initialize
    create_confirmable_user
    Entry.where(user_id: @user.id).destroy_all
    create_entries_for_user
  end
end

SeedOneUser.new
