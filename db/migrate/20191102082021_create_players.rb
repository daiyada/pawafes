class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.string :dominant_throw
      t.string :dominant_batting
      t.string :level, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
