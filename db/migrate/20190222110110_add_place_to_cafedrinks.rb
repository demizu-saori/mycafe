class AddPlaceToCafedrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :cafedrinks, :place, :text
  end
end
