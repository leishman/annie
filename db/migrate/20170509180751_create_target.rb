class CreateTarget < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.belongs_to :user
      t.string     :image
      t.belongs_to :gun
      t.belongs_to :range
    end


    create_table :guns do |t|
      t.string  :name
      t.integer :gun_type
    end

    create_table :ranges do |t|
      t.string :name
    end
  end
end
