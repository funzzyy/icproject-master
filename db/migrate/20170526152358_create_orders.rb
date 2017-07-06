class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :provider, foreign_key: true
      t.date :dateCreated
      t.date :finishDate
      t.decimal :cost
      t.string :address

      t.timestamps
    end
  end
end
