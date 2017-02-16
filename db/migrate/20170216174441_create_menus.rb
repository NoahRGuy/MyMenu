class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
    	t.integer :user_id
    end
  end
end
