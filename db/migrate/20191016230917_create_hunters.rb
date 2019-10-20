class CreateHunters < ActiveRecord::Migration[6.0]
  def change
    create_table :hunters do |t|
      t.string :name
      t.text :description
      t.integer :cnpj
      t.integer :phone
      t.string :link1

      t.timestamps
    end
  end
end
