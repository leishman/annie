class CreateTarget < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.belongs_to :user
      t.string     :image
      t.belongs_to :gun
      t.belongs_to :gun_range
      t.integer    :width
      t.integer    :height
    end

    create_table :guns do |t|
      t.string  :name
      t.integer :gun_type
    end
    add_index :guns, :name, unique: true

    create_table :gun_ranges do |t|
      t.string :name
      t.float  :latitude
      t.float  :longitude
    end
    add_index :gun_ranges, :name, unique: true

    create_table :shots do |t|
      t.belongs_to :target
      t.integer :x_pos
      t.integer :y_pos
    end
  end
end
