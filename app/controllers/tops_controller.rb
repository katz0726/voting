class TopsController < ApplicationController
  before_action :set_top, only: [:show, :edit, :update, :destroy]

  # GET /tops
  # GET /tops.json
  def index
    @campaigns = Campaign.order(updated_at: 'desc').limit(5)
    @tags = Tag.all.limit(12)
  end
end
