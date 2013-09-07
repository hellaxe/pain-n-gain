class AddUserSettingsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_settings_id, :integer
    User.all.each do |u|
      u.create_user_settings
    end
  end
end
