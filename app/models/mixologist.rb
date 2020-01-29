class Mixologist < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    
    has_many :cocktails
    has_many :alcohols, through: :cocktails
    has_many :cocktails, through: :comments
end
