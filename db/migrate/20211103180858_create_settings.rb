class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.timestamps null: false

      # References
      t.references :admin, null: false, foreign_key: { to_table: :admins, on_delete: :cascade, on_update: :cascade }

      # Website settings fields
      t.string :site_title
      t.string :contact_email
      t.string :primary_contact_phone_number
      t.string :secondary_contact_phone_number
      t.string :whatsapp_number

      # Location settings fields
      t.string :postal_code
      t.string :street_address
      t.string :street_number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :latitude
      t.string :longitude

      # Social medias settings fields
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :youtube_url
      t.string :google_url
      t.string :google_maps_url
    end
  end
end
