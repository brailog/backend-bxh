class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :link1
      t.text :link2
      t.string :category
      t.bolongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
