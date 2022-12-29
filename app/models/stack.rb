class Stack < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  validates :photo, presence: true
end
