class Project < ApplicationRecord
  belongs_to :user
  belongs_to :myportfolio
  has_one_attached :photo

  validates :title, presence: true
  validates :photo, presence: true
  validates :url, presence: true
end
