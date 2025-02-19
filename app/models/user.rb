class User < ApplicationRecord
  enum role: [:gym_user, :gym_owner]
  enum identification_type: [:identity_card_co, :foreigner_id, :foreigner_document]
end
