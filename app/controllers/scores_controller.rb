class ScoresController < ApplicationController
  before_action :set_score, only: [:show]

  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.ranking
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  private
  def set_score
    @score = Score.find params[:id]
  end
end
