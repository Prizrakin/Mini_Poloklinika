class User < ApplicationRecord
  has_many :reception
  
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
