class RemoveSomeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :results, :num_1
    remove_column :results, :num_2
    remove_column :results, :num_3
    remove_column :results, :num_4
    remove_column :results, :num_5
    remove_column :results, :num_6

    add_column :results, :result, :string
  end
end
