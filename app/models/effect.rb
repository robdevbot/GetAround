class Effect < ActiveRecord::Base
  belongs_to :stop
  belongs_to :event
end
