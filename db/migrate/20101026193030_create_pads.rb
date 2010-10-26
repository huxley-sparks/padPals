class CreatePads < ActiveRecord::Migration
  def self.up
    create_table :pads do |t|
      t.string :title
      t.boolean :location_based
      t.text :content
	  t.integer	:pal_id

      t.timestamps
    end
	add_index :pads, :pal_id
  end

  def self.down
    drop_table :pads
  end
end
