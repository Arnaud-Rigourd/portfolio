class AddColumnToStack < ActiveRecord::Migration[7.0]
  def change
    add_column :stacks, :position, :integer
  end
end
