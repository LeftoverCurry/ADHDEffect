# frozen_string_literal: true

module ControllerMacros
  def login_user
    # Before each test, create and login the user
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryBot.create(:user)
      sign_in user
    end
  end
end
