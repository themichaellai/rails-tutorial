class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.string :url
      t.integer :upvotes, default: 0

      t.timestamps
    end
  end
end
