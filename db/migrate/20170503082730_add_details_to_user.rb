class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :phone_number, :integer
    add_column :users, :id_number, :integer
    add_column :users, :fiscal_number, :integer
    add_column :users, :rating, :decimal, null: true
  end
end
