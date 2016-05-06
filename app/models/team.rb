class Team < ActiveRecord::Base
  belongs_to :movie
  belongs_to :dude
  belongs_to :role
end
