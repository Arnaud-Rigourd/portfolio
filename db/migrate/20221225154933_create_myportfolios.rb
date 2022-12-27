class CreateMyportfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :myportfolios do |t|

      t.timestamps
    end
  end
end
