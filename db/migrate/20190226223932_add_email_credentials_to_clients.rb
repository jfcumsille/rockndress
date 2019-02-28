class AddEmailCredentialsToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :email, :string
    add_column :clients, :password_digest, :string
  end
end
