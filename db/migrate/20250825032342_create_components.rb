class CreateComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :components do |t|
      t.string  :category,   null: false
      t.integer :ranking,    null: false
      t.string  :component_name, null: false

      # FPS moyens
      t.float   :avg_fps_1080
      t.float   :avg_fps_1440
      t.float   :avg_fps_4k

      # FPS 1% low
      t.float   :avg_fps_1080_1
      t.float   :avg_fps_1440_1
      t.float   :avg_fps_4k_1

      # Amazon / autre identifiant
      t.string  :asin

      t.timestamps
    end

    add_index :components, :category
    add_index :components, :ranking
    add_index :components, :component_name
  end
end
