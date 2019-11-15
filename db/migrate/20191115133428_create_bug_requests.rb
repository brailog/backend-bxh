class CreateBugRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :bug_requests do |t|
      t.string :title
      t.string :category
      t.string :repositore
      t.string :aplicationlink
      t.boolean :status
      t.references :project, null: false, foreign_key: true
      t.references :hunter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
