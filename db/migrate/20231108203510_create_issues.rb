class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :assignee
      t.string :status

      t.timestamps
    end
  end
end
