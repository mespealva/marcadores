class CreateWebmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :webmarks do |t|
      t.string :url
      t.references :cat, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
