class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :description
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
