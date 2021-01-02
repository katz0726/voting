class SupportersController < ApplicationController
  def create
    @supporter = Supporter.new(supporter_params)
    @supporter.campaign_id = params[:campaign_id]
    @supporter.user_id = current_user.id
    
    if @supporter.save
      flash[:notice] = t("activerecord.notices.messages.save_completed", :action_name => '登録')
      redirect_to campaign_url(params[:campaign_id])
    else
      flash.now[:error] = t("activerecord.errors.messages.save_failed", :action_name => '登録')
      render campaign_url(params[:campaign_id])
    end
  end

  private
    def supporter_params
      params.require(:supporter).permit(
        :campaign_id, :user_id, :invisible, comments_attribute: [
          :id, :campaign_id, :user_id, :content
        ]
      )
    end
end
