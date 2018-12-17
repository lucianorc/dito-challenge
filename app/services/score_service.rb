class ScoreService
  def add_points(params)
    result = Score.where(uid: params[:uid])
      .group(:uid)
      .sum(:points)
    result.any? ? sum = result[params[:uid]] : sum = 0
    total = sum + params[:points]

    if total < Score::MAX_POINTS
      Score.create(params).valid?
    elsif sum < Score::MAX_POINTS
      params[:points] = Score::MAX_POINTS - sum
      Score.create(params).valid?
    end
  end

end