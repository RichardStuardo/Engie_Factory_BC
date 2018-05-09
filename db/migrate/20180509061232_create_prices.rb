class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :morning
      t.string :afternoon
      t.string :night
      t.string :price

      t.timestamps
    end
  end
end
