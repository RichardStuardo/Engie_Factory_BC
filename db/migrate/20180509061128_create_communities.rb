class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
