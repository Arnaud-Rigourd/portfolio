class Project < ApplicationRecord
  belongs_to :user
  belongs_to :myportfolio
  has_one_attached :photo

end
