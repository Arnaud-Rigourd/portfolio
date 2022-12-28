class RemoveColumnFromProject < ActiveRecord::Migration[7.0]
  def change
    remove_reference :projects, :myportfolio, null: false, foreign_key: true
  end
end
