class Role < ActiveRecord::Base
  has_many :roles, through: :teams
  has_many :movies, through: :teams
  has_many :teams

  def get_people_by_movie(movie_id)
    people = Array.new
    self.teams.where(movie_id: movie_id).each do |t|
      people << t.dude
    end
    return people

  end
end
