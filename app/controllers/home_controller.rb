# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :check_signed_in

  def landing; end

  private

  def check_signed_in
    redirect_to effects_path if signed_in?
  end
end
