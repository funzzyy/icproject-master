class AddDetailsToProvider < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :first_name, :string
    add_column :providers, :last_name, :string
    add_column :providers, :birth_date, :date
    add_column :providers, :phone_number, :integer
    add_column :providers, :id_number, :integer
    add_column :providers, :fiscal_number, :integer
    add_column :providers, :address, :string
    add_column :providers, :rating, :decimal, null: true
  end
end
