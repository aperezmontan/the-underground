class CreateBottlesServices < ActiveRecord::Migration
  def change
    create_table :bottles_services do |t|
      t.integer :vip_id,    null: false
      t.integer :bottle_id, null: false
      t.integer :mixer_id,  null: false
      t.timestamps          null: false
    end
  end
end
