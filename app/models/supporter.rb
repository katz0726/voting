class Supporter < ApplicationRecord
  belongs_to :user
  belongs_to :campaign
  
  has_many :comments
  accepts_nested_attributes_for :comments
  
  validates_uniqueness_of :campaign_id, scope: :user_id
end
