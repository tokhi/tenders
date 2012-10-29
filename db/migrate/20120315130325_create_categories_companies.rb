class CreateCategoriesCompanies < ActiveRecord::Migration
  def up
	 create_table :categories_companies, :id => false do |t|
	t.references :category
	t.references :company
	end
  end

  def down
  end
end
