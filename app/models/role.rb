class Role < ApplicationRecord
    
    validates :title, uniqueness: true
end
