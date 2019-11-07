class CreateTotalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :total_records do |t|
      t.integer :muscle, null: false
      t.integer :agile, null: false
      t.integer :technique, null: false
      t.integer :change, null: false
      t.integer :spirit, null: false
      t.references :player, null: false, foreign_key: true
      t.timestamps
    end
  end
end
