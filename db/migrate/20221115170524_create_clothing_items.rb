class CreateClothingItems < ActiveRecord::Migration[7.0]
  def change
    create_table :clothing_items do |t|

      t.timestamps
    end
  end
end
