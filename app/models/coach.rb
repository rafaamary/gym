class Coach < ApplicationRecord
    belongs_to :academy
    has_many :memberships

    validates :name, presence: true
    validates :sobrenome, presence: true
    validates :phone, presence: true
    validates :email, presence: true
    validates :username, presence: true, uniqueness: true
end
