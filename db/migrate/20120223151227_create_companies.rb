class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :org_name
      t.string :isa_license
      t.date :stablished_year
      t.string :business_size
      t.text :service_description
      t.text :address
      t.string :email
      t.string :website
      t.date :reg_date

      t.timestamps
    end
  end
end
