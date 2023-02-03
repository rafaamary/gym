class Membership < ApplicationRecord
    belongs_to :coach

    validates :name, presence: true
    validates :sobrenome, presence: true
    validates :phone, presence: true
    validates :email, presence: true
    validates :username, presence: true, uniqueness: true
end
