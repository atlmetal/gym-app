class AccessLog < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
end
