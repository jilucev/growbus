class CreateGuest < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :message
        t.timestamps
    end
  end
end