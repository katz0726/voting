class TopsController < ApplicationController

  # GET /tops
  # GET /tops.json
  def index
    @campaigns = Campaign.order(updated_at: 'desc').limit(5)
    @tags = Tag.all.limit(12)
  end

  def show
    @tag = Tag.find(params[:id])
    @campaigns = Campaign.includes(:tags).where("tags.id": params[:id]).references(:tags).order(updated_at: 'desc')
  end
end
