class FitnessCenter < ApplicationRecord
  has_many :plans
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
