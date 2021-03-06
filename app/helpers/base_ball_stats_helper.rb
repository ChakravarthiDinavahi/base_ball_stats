module BaseBallStatsHelper

  def column_css(column_name)
    class_name = 'column-sort text-light text-decoration-none '
    class_name += 'selected' if column_name.to_s == @column_name
    class_name
  end

  def arrow(column_name)
    return if column_name.to_s != @column_name

    @order_by == 'ASC' ? '↑' : '↓'
  end

  def direction
    @order_by == 'ASC' ? 'DESC' : 'ASC'
  end
end
