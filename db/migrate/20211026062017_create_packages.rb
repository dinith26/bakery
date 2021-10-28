class CreatePackages < ActiveRecord::Migration[6.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :packs
      t.string :price
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
