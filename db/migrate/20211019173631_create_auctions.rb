class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.timestamps null: false

      # References
      t.references :admin, null: false, foreign_key: { to_table: :admins, on_delete: :cascade, on_update: :cascade }
      t.references :user, null: true, foreign_key: { to_table: :users, on_delete: :restrict, on_update: :cascade }

      # Blocked
      t.boolean :blocked, default: false, null: false
      t.date :blocked_at

      ## Custom fields
      t.string :status,           null: false
      t.string :title,            null: false
      t.datetime :start_date,     null: false
      t.datetime :end_date,       null: false
      t.decimal :opening_bid,     null: false
      t.string :modality
      t.text :description
      t.text :important_notices

      # Address fields
      t.string :postal_code
      t.string :street_address
      t.string :street_number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :latitude
      t.string :longitude

      # Tracking
      t.integer  :views_count, default: 0, null: false
    end

    def down 
      drop_table :auctions, if_exists: true 
    end
  end
end
