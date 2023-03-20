class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
