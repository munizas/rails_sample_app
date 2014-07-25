class WeighIn < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC')}
  validates :day, presence: true
  validates :weight, presence: true
  validates :user_id, presence: true
end
