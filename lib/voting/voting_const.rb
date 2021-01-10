module VotingConst
  GENDER = {
    GENDER_MALE = 1 => "男",
    GENDER_FEMALE = 2 => "女"
  }

  # バリデーション関連
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  MIN_LENGTH_CAMPAIGN_CONTENT = 200
end