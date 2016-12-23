class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :school
      t.integer :graduation_year
      t.string :major
      t.references :race
      t.string :gender
      t.integer :age
      t.references :diet_restrictions
      t.boolean :first_hackathon
      t.boolean :travel_reimbursement
      t.boolean :rsvp
      t.string :zipcode
      t.string :shirt_style
      t.string :shirt_size
      t.references :technical_skills
      t.string :resume

      t.timestamps null: false
    end
  end
end
