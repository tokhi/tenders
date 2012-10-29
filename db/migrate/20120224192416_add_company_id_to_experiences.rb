class AddCompanyIdToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :company_id, :integer
  end
end
