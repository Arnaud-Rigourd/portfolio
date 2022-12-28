class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.references :myportfolio, null: false, foreign_key: true
      t.string :url
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
