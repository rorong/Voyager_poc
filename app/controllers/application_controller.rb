class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    # Check if a redirect URL parameter is present and valid
    redirect_url = params[:redirect_to]
    if redirect_url.present? && valid_redirect_url?(redirect_url)
      # Clear the redirect URL parameter from the session after use
      session.delete(:redirect_to)
      redirect_url
    else
      # Fallback to the default dashboard path
      super
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :avatar, :role_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :avatar, :role_id])
  end

  private

  def valid_redirect_url?(url)
    allowed_paths = ["/", "/users/edit"]
    allowed_paths.include?(URI.parse(url).path)
  end
end
