class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :instagram

      t.timestamps
    end
  end
end
