class Comment < ApplicationRecord
  belongs_to :campaign
  belongs_to :user
  belongs_to :supporter
end
