class PagesController < ApplicationController
	protect_from_forgery with: :exception

	def home
		response = HTTParty.get('https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_balance')
  	end
end
