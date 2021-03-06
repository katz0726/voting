class CampaignsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]

  # GET /campaigns
  def index
    if params.has_key?(:condition)
      result = Campaign.includes(:tags).search(params[:condition])
      @campaigns = Kaminari.paginate_array(result).page(params[:page])
      @condition = params[:condition]
    else
      @campaigns = Campaign.all.includes(:tags).order(updated_at:'desc').page(params[:page])
    end

    render :index
  end

  # GET /campaigns/1
  def show
    @campaign = Campaign.find(params[:id])

    @comments = @campaign.comments.order(updated_at: :desc)
    @comment = Comment.new

    @supported_flg = Supporter.exists?(:campaign_id => params[:id], :user_id => current_user.id)
    @supporters = @campaign.supporters.order(updated_at: :desc)
    @supporter = @campaign.supporters.build
  end

  # GET /campaigns/new
  def new
    @campaign = Campaign.new
    @campaign.tags.build
  end

  # GET /campaigns/1/edit
  def edit
    @campaign = Campaign.find(params[:id])
  end

  # POST /campaigns
  def create
    @campaign = current_user.campaigns.build(campaign_params)

    if @campaign.save
      flash[:notice] = t("activerecord.notices.messages.save_completed", :action_name => '登録')
      redirect_to root_url
    else
      flash.now[:error] = t("activerecord.errors.messages.save_failed", :action_name => '登録')
      render :new
    end
  end

  # PATCH/PUT /campaigns/1
  def update
    @campaign = Campaign.find(params[:id])

    if @campaign.update(campaign_params)
      flash[:notice] = t("activerecord.notices.messages.save_completed", :action_name => '更新')
      redirect_to root_url
    else
      flash.now[:error] = t("activerecord.errors.messages.save_failed", :action_name => '更新')
      render :edit
    end
  end

  # DELETE /campaigns/1
  def destroy
    @campaign = Campaign.find(params[:id])
    
    if @campaign.destroy
      flash[:notice] = t("activerecord.notices.messages.save_completed", :action_name => '削除')
      redirect_to root_url
    else
      flash.now[:error] = t("activerecord.errors.messages.save_failed", :action_name => '削除')
      render :show
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def campaign_params
      params.require(:campaign).permit(
        :title, :content, :goal, :campaign_image, :campaign_for, :user_id, tags_attributes: [:name]
      )
    end
end
