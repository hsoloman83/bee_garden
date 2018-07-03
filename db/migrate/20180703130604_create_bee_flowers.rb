class CreateBeeFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :bee_flowers do |t|
      t.belongs_to :bee, foreign_key: true
      t.belongs_to :flower, foreign_key: true

      t.timestamps
    end
  end
end
