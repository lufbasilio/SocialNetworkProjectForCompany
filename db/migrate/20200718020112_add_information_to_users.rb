class AddInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :phone, :string
    add_column :users, :birth_date, :date
    add_column :users, :country, :string
    add_column :users, :gender, :string
    add_column :users, :bio, :text
  end
end
