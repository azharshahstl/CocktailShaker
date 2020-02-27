class Mixologist < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, confirmation: true 
    validates :password_confirmation, presence: true

    has_many :cocktails
    has_many :alcohols, through: :cocktails
end
