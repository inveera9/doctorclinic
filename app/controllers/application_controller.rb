class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    schedules_path(resource)
  end
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :mobile, :qualification) }
      devise_parameter_sanitizer.for(:doctor_update) { |u| u.permit(:name, :email, :password, :current_password, :mobile, :qualification) }
    end
end
