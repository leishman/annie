class CreateTarget < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.belongs_to :user
      t.string     :image
      t.belongs_to :gun
      t.belongs_to :gun_range
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

  end
end
