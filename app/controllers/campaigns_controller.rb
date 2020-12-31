class CampaignsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /campaigns
  def index
    if params[:condition].present?
      result = Campaign.search(params[:condition])
      @campaigns = Kaminari.paginate_array(result).page(params[:page])
    else
      @campaigns = Campaign.all.order(updated_at: 'desc').page(params[:page])
    end
  end

  # GET /campaigns/1
  def show
    @campaign = Campaign.find(params[:id])
    @comment = Comment.new
    @comments = @campaign.comments
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
    @campaign = Campaign.new(campaign_params)

    if @campaign.save!
      action_name = 
      flash[:notice] = t("notice.messages.save_completed")
      redirect_to campaigns_url
    else
      render :new
    end
  end

  # PATCH/PUT /campaigns/1
  def update
  end

  # DELETE /campaigns/1
  def destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def campaign_params
      params.require(:campaign).permit(
        :title, :content, :goal, tags_attributes: [
          :name
        ]
      )
    end
end
