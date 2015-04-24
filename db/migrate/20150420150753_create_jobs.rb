class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :date
      t.string :description
      t.string :city

      t.timestamps null: false
    end
  end
end
