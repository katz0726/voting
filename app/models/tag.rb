class Tag < ApplicationRecord
  has_many :tag_maps, dependent: :destroy, foreign_key: 'tag_id'
  has_many :campaigns, through: :tag_maps

  accepts_nested_attributes_for :campaigns
end
