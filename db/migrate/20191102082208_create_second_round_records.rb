class CreateSecondRoundRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :second_round_records do |t|
      t.string :take_part_in, null: false
      t.integer :point_difference, null: false
      t.integer :lost_point, null: false
      t.integer :muscle, null: false
      t.integer :agile, null: false
      t.integer :technique, null: false
      t.integer :change, null: false
      t.integer :spirit, null: false
      t.integer :hit, null: false
      t.integer :second_base_hit, null: false
      t.integer :third_base_hit, null: false
      t.integer :home_run, null: false
      t.integer :sacrifice_bunt, null: false
      t.integer :sacrifice_fly, null: false
      t.integer :steal, null: false
      t.integer :pitch, null: false
      t.integer :straight_ball_out, null: false
      t.integer :change_ball_out, null: false
      t.integer :strike_out, null: false
      t.integer :fly_liner_out, null: false
      t.integer :roller, null: false
      t.integer :double_play, null: false
      t.references :player, null: false, foreign_key: true
      t.timestamps
    end
  end
end
