class Article < ApplicationRecord
  # validations
  # https://guides.rubyonrails.org/active_record_validations.html
  belongs_to :user
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 100 }
end
