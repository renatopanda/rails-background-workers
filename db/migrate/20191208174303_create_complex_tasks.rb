class CreateComplexTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :complex_tasks do |t|
      t.string :title
      t.text :result

      t.timestamps
    end
  end
end
