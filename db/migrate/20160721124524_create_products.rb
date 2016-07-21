class CreateProducts < ActiveRecord::Migration
  def change
    create_table  :products do |t|
    t.string      :name, null: false
    t.numeric     :brand_id
    t.numeric     :category_id

      t.timestamps
    end
  end
end
