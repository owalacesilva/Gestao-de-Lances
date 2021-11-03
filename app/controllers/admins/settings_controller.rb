class Admins::SettingsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @settings = settings
  end

  def update
    settings.update(settings_params)
    if settings.save!
      redirect_to admins_settings_url
    else
      render :index
    end
  end

  private

  def settings
    Setting.first
  end

  def settings_params
    params.require(:settings).permit([:site_title, :contact_email, :primary_contact_phone_number, :secondary_contact_phone_number, :whatsapp_number, :facebook_url, 
      :twitter_url, :linkedin_url, :youtube_url, :google_url, :google_maps_url,
      :postal_code, :street_address, :street_number, :neighborhood, :city, :state, :country])
  end
end
