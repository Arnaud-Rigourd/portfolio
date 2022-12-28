class Project < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :title, presence: true
  validates :photo, presence: true
  validates :url, presence: true
end
