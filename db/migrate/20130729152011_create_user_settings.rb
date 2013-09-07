class CreateUserSettings < ActiveRecord::Migration
  def change
    create_table :user_settings do |t|
      t.integer :user_id
      t.string :language, default: 'en'

      t.timestamps
    end
  end
end
