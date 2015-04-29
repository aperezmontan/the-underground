class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string      :type,  null: false
      t.string      :name,  null: false
      t.decimal     :price, null: false, precision: 2
      t.timestamps          null: false
    end
  end
end
