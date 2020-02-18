class Garnish < ApplicationRecord
    has_many :cocktails
    validates :kind, :uniqueness :true, :presence :true
end
