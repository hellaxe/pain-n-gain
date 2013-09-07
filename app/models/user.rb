class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :username, :user_settings_attributes

  validates_uniqueness_of :username
  validates_presence_of :username

  before_create :create_settings

  has_one :user_settings, dependent: :destroy

  accepts_nested_attributes_for :user_settings, update_only: true

  private
  def create_settings
    self.create_user_settings
  end
end
