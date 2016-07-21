class CreatePurchases < ActiveRecord::Migration
  def change
    create_table  :purchases do |t|

    t.string      :product_id, null: false, limit: 30
    t.string      :user_id, null: false
    t.date        :purchase_date, null: false
    t.boolean     :status

    t.timestamps
    end
  end
end
