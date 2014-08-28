class Initial < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :links do |t|
      t.string :name
      t.string :url
      t.belongs_to :user

      t.timestamps
    end
  end
end
