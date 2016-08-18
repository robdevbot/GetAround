class Stop < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :effects
  has_many :events, through: :effects
  belongs_to :line
end
