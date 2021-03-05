class BaseBallStatsController < ApplicationController
  def index
    @pagy, @base_ball_stats = pagy(BaseBallStat.all)
  end

  def logs
    @pagy, @base_ball_stats = pagy(BaseBallStat.all)

  end
end
