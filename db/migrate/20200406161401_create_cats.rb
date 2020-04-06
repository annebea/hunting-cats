class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.text :description
      t.string :breed
      t.integer :age
      t.integer :performance
      t.integer :price_per_day
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
