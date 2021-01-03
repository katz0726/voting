class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.campaign_id = params[:campaign_id]
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = t("activerecord.notices.messages.save_completed", :action_name => '登録')
      redirect_to campaign_url(params[:campaign_id])
    else
      flash.now[:error] = t("activerecord.errors.messages.save_failed", :action_name => '登録')
      render campaign_path(params[:campaign_id])
    end
  end

  private
    def comment_params
      params.require(:comment).permit(
        :campaign_id, :user_id, :content
      )
    end
end
