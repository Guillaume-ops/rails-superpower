class AddSuperHerosToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :superheros, :boolean, default: false
  end
end
