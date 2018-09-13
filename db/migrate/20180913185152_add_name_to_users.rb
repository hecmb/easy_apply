class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :applicant, :boolean, default: false
    add_column :users, :employer, :boolean, default: false


  end
end
