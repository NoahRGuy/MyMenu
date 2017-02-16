class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
    	t.integer :menu_id
    	t.numeric :price, {null: false}
    	t.string :title, {null: false}
    	t.string :description, {null: false}
    end
  end
end
