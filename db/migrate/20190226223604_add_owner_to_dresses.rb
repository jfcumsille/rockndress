class AddOwnerToDresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :dresses, :owner, foreign_key: true
  end
end
