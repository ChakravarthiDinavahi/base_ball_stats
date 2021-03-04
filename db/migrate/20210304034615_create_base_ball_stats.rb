class CreateBaseBallStats < ActiveRecord::Migration[5.2]
  def change
    create_table :base_ball_stats do |t|
      t.string :player_name
      t.float :avg, limit: 53
      t.float :hr, limit: 53
      t.float :runs, limit: 53
      t.float :rbi, limit: 53
      t.float :sbs, limit: 53
      t.float :ops, limit: 53
      t.timestamps
    end
  end
end