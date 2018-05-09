class CreatePriceCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :price_communities do |t|
      t.references :price, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
  end
end
