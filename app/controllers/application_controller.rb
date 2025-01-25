class ApplicationController < ActionController::Base
  # Redirect to dashboard after sign-in
  def after_sign_in_path_for(resource)
    dashboard_path  # Redirect to the dashboard after login
  end

  # Check email confirmation before allowing access to authenticated users
  before_action :check_email_confirmation, if: :user_signed_in?

  def check_email_confirmation
    # If the user is not confirmed, sign them out and redirect to the sign-in page with an alert
    if !current_user.confirmed?
      sign_out current_user
      redirect_to new_user_session_path, alert: "You must confirm your email before continuing."
    end
  end
end
