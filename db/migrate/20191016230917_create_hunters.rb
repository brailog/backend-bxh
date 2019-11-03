class CreateHunters < ActiveRecord::Migration[6.0]
  def change
    create_table :hunters do |t|
      t.string :email
      t.string :password
      t.string :name
      t.text :description
      t.string :cpf
      t.string :phone
      t.string :link1

      t.timestamps
    end
  end
end
