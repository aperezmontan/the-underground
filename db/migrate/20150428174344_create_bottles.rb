class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string  :name,  null: false
      t.decimal :price, null: false
    end
  end
end
