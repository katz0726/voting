class Campaign < ApplicationRecord
  has_many :tags, dependent: :destroy
  has_many :supporter, dependent: :destroy
end
