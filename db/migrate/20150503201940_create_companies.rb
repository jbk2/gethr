class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :hr_contact
      t.string :hr_contact_email

      t.timestamps
    end
  end
end
