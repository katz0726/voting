class TopsController < ApplicationController

  # GET /tops
  # GET /tops.json
  def index
    @campaigns = Campaign.includes(:tags).order(updated_at: 'desc').page(params[:page])
    @succeeded_campaigns = Campaign.where(achieved: 1).order(updated_at: 'desc')
    @user_count = User.count
    @tags = Tag.all.limit(12)
  end

  def show
    @tag = Tag.find(params[:id])
    @campaigns = Campaign.includes(:tags).where("tags.id": params[:id]).references(:tags).order(updated_at: 'desc')
  end
end
