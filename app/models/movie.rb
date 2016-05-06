class Movie < ActiveRecord::Base
  has_many :roles, through: :teams
  has_many :dudes, through: :teams
  has_many :teams
end
