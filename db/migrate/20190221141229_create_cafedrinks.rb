class CreateCafedrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :cafedrinks do |t|
        t.string      :name
        t.text        :price
        t.text        :image
        t.text        :memo
        t.text        :star
      t.timestamps    null: true
    end
  end
end
