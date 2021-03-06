class BaseBallStatsController < ApplicationController
  def index
    colum_name = params[:column_name].present? ? params[:column_name] : 'avg'
    order_by = params[:order_by].present? ? params[:order_by] : 'DESC'
    # pagination and backend sort
    @pagy, @base_ball_stats = pagy(BaseBallStat.all.order("#{colum_name} #{order_by}"))
  end
end
