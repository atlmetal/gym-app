class Plan < ApplicationRecord
  belongs_to :fitness_center

  enum plan_type: { monthly: 0, access_based: 1 }
end
