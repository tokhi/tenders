class AddCompanyIdToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :company_id, :integer
  end
end
