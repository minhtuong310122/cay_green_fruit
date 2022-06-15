class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, unique: true
      t.string :password_digest
      t.string :fullname
      t.string :phone, unique: true
      t.string :address
      t.integer :role
      t.timestamps
    end
  end
end
