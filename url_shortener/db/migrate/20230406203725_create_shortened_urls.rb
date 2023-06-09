class CreateShortenedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_url
      t.references :users, null: false, foreign_key: true
      # t.index ["short_url"], name: "index_short_url"

      t.timestamps
    end
    add_index :shortened_urls, :short_url, unique: true

  end
end
