class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }
    validates :title, length: { maximum: 10 }
end
