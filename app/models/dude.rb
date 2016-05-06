class Dude < ActiveRecord::Base
  has_many :roles, through: :teams
  has_many :movies, through: :teams
  has_many :teams


  def age
    now = Date.today
    age = ((now - self.birthdate) / 365.25).to_i
  end

  def roles_availables(movie_id)
    myroles = Array.new
    self.teams.where(movie_id: movie_id).each do |t|
        myroles << t.role
    end

    Role.all - myroles
  end
end
