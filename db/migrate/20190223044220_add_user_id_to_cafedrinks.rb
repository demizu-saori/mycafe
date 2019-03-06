class AddUserIdToCafedrinks < ActiveRecord::Migration[5.2]
  def change
    add_column :cafedrinks, :user_id, :integer
  end
end
