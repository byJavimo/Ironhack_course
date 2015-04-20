class CreateLaptopModels < ActiveRecord::Migration
  def change
    create_table :laptop_models do |t|
      t.string :Brand
      t.text :Model
      t.text :Processor_brand
      t.integer :RAM_size
      t.integer :Price

      t.timestamps null: false
    end
  end
end
