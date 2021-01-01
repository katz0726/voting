class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :trackable
    
  has_many :campaigns, dependent: :destroy
  has_many :comments
  has_many :supporters
  has_many :supported_campaigns, through: :supporters, source: :campaign

  validates :username_last, presence: {message: 'を入力してください' }
  validates :username_first, presence:{message: 'を入力してください' }

  def already_liked?(campaign)
    self.supporters.exists?(campaign_id: campaign.id)
  end
end
