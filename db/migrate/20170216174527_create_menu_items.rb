class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
    	t.integer :menu_id
    	t.numeric :price, {null: false}
    	t.string :title, {null: false}
    	t.string :description, {null: false}
    end
  end
end
