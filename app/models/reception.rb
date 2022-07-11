class Reception < ApplicationRecord
    belongs_to :user
    has_many :recommendation
end
