class AddUserToMyportfolio < ActiveRecord::Migration[7.0]
  def change
    add_reference :myportfolios, :user, null: false, foreign_key: true
  end
end
