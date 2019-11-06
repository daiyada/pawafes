class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.string :name, null: false
      t.float :coefficient, null: false
      t.timestamps
    end
  end
end
