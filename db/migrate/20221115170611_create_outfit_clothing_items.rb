class CreateOutfitClothingItems < ActiveRecord::Migration[7.0]
  def change
    create_table :outfit_clothing_items do |t|

      t.timestamps
    end
  end
end
