class Score < ApplicationRecord
  MAX_POINTS = 3126
  validates :date, :username, :uid, :points, presence:true

  def self.ranking
    self.select("uid, username, sum(points) as points")
      .group("uid, username")
      .order("points DESC")
  end
end
