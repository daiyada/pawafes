class CreateThirdRoundTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :third_round_teams do |t|
      t.string :name, null: false
      t.integer :base_point, null: false
      t.timestamps
    end
  end
end
