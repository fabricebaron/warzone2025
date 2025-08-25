class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.references :component, null: false, foreign_key: true
      t.string  :vendor, null: false
      t.string  :url, null: false
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end

    add_index :offers, [:component_id, :vendor], unique: true
  end
end
