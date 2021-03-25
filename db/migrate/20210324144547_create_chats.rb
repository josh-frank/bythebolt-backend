class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.string :subject
      t.belongs_to :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
