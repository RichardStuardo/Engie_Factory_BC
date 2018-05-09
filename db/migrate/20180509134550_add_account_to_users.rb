class AddAccountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account, :string
    add_column :users, :balance, :string
    add_column :users, :max_balance, :string
  end
end
