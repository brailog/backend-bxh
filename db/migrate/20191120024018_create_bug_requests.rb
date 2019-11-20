class CreateBugRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :bug_requests do |t|
      t.string :title
      t.string :category
      t.string :repository_link
      t.string :live_link
      t.string :status
      t.references :project, null: false, foreign_key: true
      t.references :hunter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
