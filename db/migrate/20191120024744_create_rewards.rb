class CreateRewards < ActiveRecord::Migration[6.0]
  def change
    create_table :rewards do |t|
      t.string :type
      t.string :value
      t.references :bugrequest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
