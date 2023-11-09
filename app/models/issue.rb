class Issue < ApplicationRecord
  enum priority: { low: 'Low', medium: 'Medium', high: 'High' }
  enum status: { open: 'Open', in_progress: 'In Progress', closed: 'Closed' }

  
  validates :title, presence: true
  validates :description, presence: true
  validates :priority, presence: true
  validates :assignee, presence: true
  validates :status, presence: true
end
