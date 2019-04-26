class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 5, scale: 2
      t.string :img_url
      t.integer :user_id
      t.string :category
      t.timestamps
    end
  end
end
