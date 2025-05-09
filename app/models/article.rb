class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: { minimum: 8, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
