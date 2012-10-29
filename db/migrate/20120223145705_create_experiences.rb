class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :customer
      t.string :location
      t.date :date
      t.string :duration
      t.string :project_cost
      t.text :project_description

      t.timestamps
    end
  end
end
