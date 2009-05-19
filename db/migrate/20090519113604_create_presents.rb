class CreatePresents < ActiveRecord::Migration
  def self.up
    create_table :presents do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :presents
  end
end
