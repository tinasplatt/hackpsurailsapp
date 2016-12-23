class CreateTechnicalSkills < ActiveRecord::Migration
  def change
    create_table :technical_skills do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
