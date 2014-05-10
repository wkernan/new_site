class PagesController < ApplicationController
	protect_from_forgery with: :exception
	before_action :home

	def home
		@balance = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_balance").body)['data']['balance']
  	end
end
