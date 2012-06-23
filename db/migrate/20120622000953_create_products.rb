class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :foto
      t.string :name
      t.string :code
      t.string :price
      t.references :category
      t.text :description

      t.timestamps
    end
    add_index :products, :category_id
  end
end
