class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.integer :applicant_id
      t.integer :company_id

      t.timestamps
    end
  end
end
