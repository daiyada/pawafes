class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name, null: false
      t.integer :muscle, null: false
      t.integer :agile, null: false
      t.integer :technique, null: false
      t.integer :change, null: false
      t.integer :spirit, null: false
      t.timestamps
    end
  end
end
