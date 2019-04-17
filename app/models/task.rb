class Task < ApplicationRecord
  belongs_to :project

  STATUSES = [
    ['New', 1],
    ['In progress', 2],
    ['Done', 3]
  ]

end
