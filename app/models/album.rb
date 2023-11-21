class Album < ApplicationRecord

  validates :caption, presence: true
  validates :description, presence: true

end
