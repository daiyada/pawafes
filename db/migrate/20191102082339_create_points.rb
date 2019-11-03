class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.integer :muscle, null: false
      t.integer :agile, null: false
      t.integer :technique, null: false
      t.integer :change, null: false
      t.integer :spriit, null: false
      t.timestamps
    end
  end
end
