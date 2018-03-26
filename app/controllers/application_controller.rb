# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :set_current_user

  private

  def set_current_user
    Current.user = User.first # normally this would be current_user
  end
end
