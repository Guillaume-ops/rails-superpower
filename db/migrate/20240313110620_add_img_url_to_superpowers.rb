class AddImgUrlToSuperpowers < ActiveRecord::Migration[7.1]
  def change
    add_column :superpowers, :img_url, :string
  end
end
