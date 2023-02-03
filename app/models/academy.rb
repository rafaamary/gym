class Academy < ApplicationRecord
    has_many :coaches

    validates :name, presence: true, uniqueness: true
    validates :phone, presence: true
    validates :email, presence: true
end
