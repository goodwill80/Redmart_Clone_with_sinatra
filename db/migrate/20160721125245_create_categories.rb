class CreateCategories < ActiveRecord::Migration
  def change
    create_table  :categories do |t|
    t.string      :name, null: false
    t.numeric     :number_of_products
    t.numeric     :product_id


      t.timestamps
    end
  end
end
