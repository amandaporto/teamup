class ActivitiesController < ApplicationController
  before_action :ensure_current_user

  def create
    current_user.activities.create(activity_params)

    redirect_to edit_profile_users_path
  end

  def destroy
    current_user.activities.find(params[:id]).destroy

    redirect_to edit_profile_users_path
  end

  private

  def activity_params
    params.require(:activity).permit(:sport, :skill_level)
  end
end
