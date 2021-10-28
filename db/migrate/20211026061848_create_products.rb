class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :code, unique: true
  end
end
