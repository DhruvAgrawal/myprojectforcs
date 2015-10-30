class Messofiituser <ActiveRecord:: Base
  has_many :comments
  before_save { self.email =email.downcase }
  validates :messusername, presence: true, length: { minimum: 3 , maximum: 40 }
  VALID_EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
                                    uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }
                                    
  
end