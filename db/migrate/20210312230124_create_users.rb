class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar
      t.string :password_digest
      t.string :email
      t.text :bio
      t.float :location, array: true

      t.timestamps
    end
  end
end
