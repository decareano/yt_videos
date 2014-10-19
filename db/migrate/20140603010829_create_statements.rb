class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :name

      t.timestamps
    end
  end
end
