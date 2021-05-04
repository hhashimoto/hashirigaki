class AddUserRefToScraps < ActiveRecord::Migration[6.1]
  def change
    add_reference :scraps, :user, null: false, foreign_key: true
  end
end
