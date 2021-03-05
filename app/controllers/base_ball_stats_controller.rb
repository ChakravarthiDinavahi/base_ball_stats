class BaseBallStatsController < ApplicationController
  def index
    # @pagy, @base_ball_stats = pagy(BaseBallStat.all)
    # offset = params[:offset].presence
    orderby= params[:orderby].present? ? params[:orderby]: 'avg' 
    # @base_ball_stats = BaseBallStat.all.order("#{orderby} DESC").page(params[:page])

    # @base_ball_stats.offset(offset).limit(30).order("created_at DESC")
  end
end
