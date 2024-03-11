class CreateSuperpowers < ActiveRecord::Migration[7.1]
  def change
    create_table :superpowers do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
