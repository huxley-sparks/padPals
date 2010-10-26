class CreatePals < ActiveRecord::Migration
  def self.up
    create_table :pals do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :pals
  end
end
