class Mixologist < ApplicationRecord
    validates :email, :password_digest, presence: true
    has_many :cocktails
    has_many :alcohols, through: :cocktails
    has_many :cocktails, through: :comments
end
