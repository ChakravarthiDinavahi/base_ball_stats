class CreateBaseBallStats < ActiveRecord::Migration[5.2]
  def change
    create_table :base_ball_stats do |t|
      t.string :player_name
      t.float :avg, default: 0
      t.integer :hr, default: 0
      t.integer :runs, default: 0
      t.integer :rbi, default: 0
      t.integer :sbs, default: 0
      t.float :ops, default: 0
      t.timestamps
    end
  end
end
