class CreateBrands < ActiveRecord::Migration
  def change

    create_table    :brands do |t|
    t.string        :name, null: false
    t.numeric       :number_of_items
    t.numeric       :categories_id


      t.timestamps
  
  end
  end
end
