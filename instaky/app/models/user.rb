class User < ApplicationRecord
    has_many :post, dependent: :destroy
    validates :name, presence: true
    validates :email, presence: true
end
