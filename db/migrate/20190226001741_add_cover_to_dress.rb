class AddCoverToDress < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :cover, :string
  end
end
