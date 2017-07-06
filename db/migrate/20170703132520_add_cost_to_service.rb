class AddCostToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :cost, :decimal
  end
end
