class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    t.string    :name, null: false, limit: 30
    t.string    :email
    t.string    :address
    t.string    :password, limit: 20
    t.numeric   :cc_number, limit: 12

    t.timestamps
    end
  end
end
