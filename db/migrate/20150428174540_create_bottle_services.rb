class CreateBottleServices < ActiveRecord::Migration
  def change
    create_table :bottle_services do |t|
      t.integer :vip_id,    null: false
      t.integer :bottle_id, null: false
      t.integer :mixer_id,  null: false
      t.timestamps          null: false
    end
  end
end
