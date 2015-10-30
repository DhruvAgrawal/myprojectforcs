class Comment <ActiveRecord:: Base
  belongs_to :messofiituser
  validates :messofiituser_id, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :comments, presence: true
  validates :review, presence: true;
  
end