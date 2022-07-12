class User < ApplicationRecord
  has_many :receptions
  has_one :user_role 
  has_one :role, through: :user_role
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:phone]

         validates :phone, uniqueness: true

  def email_required?
  false
  end

  def email_changed?
  false
  end

end
