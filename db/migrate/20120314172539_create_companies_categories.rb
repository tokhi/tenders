class CreateCompaniesCategories < ActiveRecord::Migration
  def up
	create_table :companies_categories, :id => false do |t|
	t.references :company
	t.references :category
	end

  end

  def down
  end
end
