class CreateSkillemails < ActiveRecord::Migration
  def self.up
    create_table :skillemails do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.text :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :skillemails
  end
end
