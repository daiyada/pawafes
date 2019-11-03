class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name, null: false
      t.float :muscle_coefficient, null: false
      t.float :agile_coefficient, null: false
      t.float :technique_coefficient, null: false
      t.float :change_coefficient, null: false
      t.float :spirit_coefficient, null: false
      t.timestamps
    end
  end
end
