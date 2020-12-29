class Campaign < ApplicationRecord
  belongs_to :user
  
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  has_many :supporters, dependent: :destroy
  has_many :supported_users, through: :supporters, source: :user
  

  has_many :comments, dependent: :destroy
end
