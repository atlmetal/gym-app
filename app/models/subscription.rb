class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan

  validate :end_date_after_start_date

  def active?
    Date.today >= start_date && Date.today <= end_date
  end

  private

  def end_date_after_start_date
    if end_date <= start_date
      errors.add(:end_date, I18n.t('activerecord.models.suscription.errors.end_date_after_start_date'))
    end
  end
end
