class AccessLog < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validates :accessed_at, presence: true
end
