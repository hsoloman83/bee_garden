class CreateBees < ActiveRecord::Migration[5.2]
  def change
    create_table :bees do |t|
      t.string :name
      t.string :category
      t.boolean :queen
      t.belongs_to :hive, foreign_key: true

      t.timestamps
    end
  end
end
