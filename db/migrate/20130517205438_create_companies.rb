class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :address
      t.string :city
      t.string :country
      t.string :description
      t.string :email
      t.string :name
      t.string :website
      t.integer :user_id

      t.timestamps
    end
    add_index :companies, [:user_id, :created_at]
  end
end
