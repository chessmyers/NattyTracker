class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :park_code
      t.text :description
      t.string :url
      t.float :latitude
      t.float :longitude
      t.string :state
      t.string :email
      t.string :phone
      t.string :fax
      t.text :directions
      t.string :directions_url
      t.text :weather

      t.timestamps
    end

    create_table :fees do |t|
      t.belongs_to :park, index: true, foreign_key: true

      t.string :title
      t.text :description
      t.float :cost

      t.timestamps
    end

    create_table :addresses do |t|
      t.belongs_to :park, index: true, foreign_key: true

      t.string :type
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.string :postal_code

      t.timestamps
    end

    create_table :images do |t|
      t.belongs_to :park, index: true, foreign_key: true

      t.string :title
      t.string :caption
      t.string :alt_text
      t.string :credit
      t.string :url

      t.timestamps
    end
  end
end
