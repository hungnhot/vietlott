class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.date :date
      t.integer :num_1, :limit => 1
      t.integer :num_2, :limit => 1
      t.integer :num_3, :limit => 1
      t.integer :num_4, :limit => 1
      t.integer :num_5, :limit => 1
      t.integer :num_6, :limit => 1

      t.timestamps
    end
  end
end
