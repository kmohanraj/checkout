class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :total
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
