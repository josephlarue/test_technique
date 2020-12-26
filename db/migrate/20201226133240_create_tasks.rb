class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.boolean :status
      t.string :priority_order
      t.date :deadline

      t.timestamps
    end
  end
end
