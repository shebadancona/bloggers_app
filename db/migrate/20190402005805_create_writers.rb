class CreateWriters < ActiveRecord::Migration[5.2]
  def change
    create_table :writers do |t|
      t.string :name
      t.integer :age
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
