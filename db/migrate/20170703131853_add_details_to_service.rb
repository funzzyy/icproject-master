class AddDetailsToService < ActiveRecord::Migration[5.1]
  def change
    add_reference :services, :provider, foreign_key: true
  end
end
