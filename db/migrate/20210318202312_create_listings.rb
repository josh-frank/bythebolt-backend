class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity
      t.string :unit
      t.string :image_urls, array: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
