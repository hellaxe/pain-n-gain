class UserSettings < ActiveRecord::Base
  LANGUAGES = [EN: 'en', RU: 'ru', DE: 'de']
  attr_accessible :language, :user_id
  belongs_to :user

  def get_locale
    I18n.locale
  end
end
