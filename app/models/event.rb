class Event < ActiveRecord::Base
  # Remember to create a migration!
  has_many :effects
end
