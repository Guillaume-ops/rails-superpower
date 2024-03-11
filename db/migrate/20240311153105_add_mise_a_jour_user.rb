class AddMiseAJourUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :country, :string
    add_column :users, :phone_number, :string
    add_column :users, :rating, :integer
  end
end
