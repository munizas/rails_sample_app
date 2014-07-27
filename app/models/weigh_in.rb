class WeighIn < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('day DESC')}
  validates :day, presence: true
  validates :weight, presence: true
  validates :user_id, presence: true
  
  def self.weight_on(date)
    where("date(day) = ? and user_id = ?", date, 101).sum(:weight)
  end
  
  def self.percent_body_fat_on(date)
    where("date(day) = ? and user_id = ?", date, 101).sum(:percent_body_fat)
  end
end
