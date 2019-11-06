class CreateFinalRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :final_rounds do |t|
      t.string :opponent, null: false
      t.string :supporter, null: false
      t.string :supporter_mood, null: false
      t.string :horisugi_doll, null: false
      t.references :player, null: false, foreign_key: true
      t.timestamps
    end
  end
end
