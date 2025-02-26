class CheckinsController < ApplicationController
  def new
  end

  def create
    # Assume params[:user_id] is provided from the check-in form
    user = User.find_by(id: checkin_params[:user_id])

    if user
      # Find an active subscription for the user
      subscription = user.subscriptions.find_by("start_date <= ? AND end_date >= ?", Date.today, Date.today)
      if subscription
        # Record the access event
        AccessLog.create!(user: user, subscription: subscription, accessed_at: Time.current)
        # For access-based plans, decrement the counter
        if subscription.plan.access_based? && subscription.accesses_remaining.present?
          subscription.update!(accesses_remaining: subscription.accesses_remaining - 1)
        end
        flash[:notice] = "Access granted for user #{user.name}."
      else
        flash[:alert] = "No active subscription found."
      end
    else
      flash[:alert] = "User not found."
    end
    redirect_to new_checkin_path
  end

  private

  def checkin_params
    params.permit(:user_id)
  end
end
