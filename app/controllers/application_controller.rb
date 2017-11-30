class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :has_profile?
  # def has_profile?
  #   if current_user && current_user.profile.nil?
  #     redirect_to new_profile_path
  #   end
  # end
end
