class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :buyer
      t.string :location
      t.string :sector
      t.text :description
      t.datetime :opening_date
      t.datetime :closing_date
      t.string :name
      t.string :email
      t.integer :phone
      t.string :addition_info
#      t.string :attachement

      t.timestamps
    end
  end
end
