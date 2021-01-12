class Supporter < ApplicationRecord
  belongs_to :user
  belongs_to :campaign
  
  validates_uniqueness_of :campaign_id, scope: :user_id
end
