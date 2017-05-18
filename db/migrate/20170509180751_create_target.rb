class CreateTarget < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.belongs_to :user
      t.string     :image
    end
  end
end
