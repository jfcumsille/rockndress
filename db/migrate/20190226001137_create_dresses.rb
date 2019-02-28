class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses do |t|
      t.text :description
      t.integer :cost
      t.string :category
      t.string :color

      t.timestamps
    end
  end
end
