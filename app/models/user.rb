class User < ApplicationRecord
  enum role: [:gym_user, :gym_owner]
  enum identification_type: [:identity_card_co, :foreigner_id, :foreigner_document]

  has_many :subscriptions
  has_many :fitness_centers, through: :subscriptions
  has_many :access_logs
end
