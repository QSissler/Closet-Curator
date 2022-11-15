class CreateClothingItems < ActiveRecord::Migration[7.0]
  def change
    create_table :clothing_items do |t|
      t.string :name
      t.string :description
      t.string :front_image
      t.string :back_image
      t.string :event
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
