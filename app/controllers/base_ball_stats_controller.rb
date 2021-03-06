class BaseBallStatsController < ApplicationController

  before_action :set_variables, only: :index

  def index
    @pagy, @base_ball_stats = pagy(BaseBallStat.all.order("#{@column_name} #{@order_by}"), items: 25)
  end

  private

  def set_variables
    @column_name = permitted_column_name(params[:column_name])
    @order_by = permitted_order(params[:order_by])
  end

  def permitted_column_name(column_name)
    %w[player_name avg hr runs rbi sbs ops].find{ |permitted| column_name == permitted } ||  'avg'
  end

  def permitted_order(order)
    %w[ASC DESC].find { |permitted| order == permitted } || 'DESC'
  end
end
