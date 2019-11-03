class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name, null: false
      t.integer :muscle_coefficient, null: false
      t.integer :agile_coefficient, null: false
      t.integer :technique_coefficient, null: false
      t.integer :change_coefficient, null: false
      t.integer :spriit_coefficient, null: false
      t.timestamps
    end
  end
end
