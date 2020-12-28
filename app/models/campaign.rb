class Campaign < ApplicationRecord
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  has_many :supporters, dependent: :destroy
  has_many :comments, dependent: :destroy
end
