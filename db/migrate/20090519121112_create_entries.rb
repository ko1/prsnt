class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :nickname
      t.string :email
      t.text :comment
      t.datetime :entered_at
      t.references :present

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
