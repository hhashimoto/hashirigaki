class CreateScraps < ActiveRecord::Migration[6.1]
  def change
    create_table :scraps do |t|
      t.text :body

      t.timestamps
    end
  end
end
