# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing]
  before_action :check_signed_in

  def landing; end

  private

  def check_signed_in
    redirect_to effects_path if signed_in?
  end
end
