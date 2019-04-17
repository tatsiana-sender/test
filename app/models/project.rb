class Project < ApplicationRecord
  has_many :tasks
  validates :title, presence: true, length: {minimum: 6}
end
