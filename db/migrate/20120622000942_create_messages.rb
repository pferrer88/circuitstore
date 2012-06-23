class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
