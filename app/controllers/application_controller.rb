class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    if current_user
      session[:locale] = current_user.user_settings.language
      return I18n.locale = session[:locale]
    end

    locale = request.preferred_language_from(I18n.available_locales)
    locale ||= request.compatible_language_from(I18n.available_locales)
    I18n.locale = locale || I18n.default_locale
  end

end
