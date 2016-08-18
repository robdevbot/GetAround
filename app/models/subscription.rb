class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :stop
  has_many :effects, through: :stop
end
